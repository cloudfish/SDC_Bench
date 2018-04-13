#include <bits/stdc++.h>

#include "../http.h"
#include "http_request.hpp"
#include <hiredis/hiredis.h>
#include <acl_cpp/lib_acl.hpp>

using namespace http;

tuple<std::string, std::string, std::string> parseReq(const std::string& req_str) {
    std::string type, key, val = "";
    vector<int> pos;
    for (int i = 0; i < req_str.length(); ++i) {
        if (req_str[i] == '/') pos.push_back(i);
    }
    assert(pos.size() >= 2);
    type = req_str.substr(pos[0] + 1, pos[1] - pos[0] - 1);
    transform(type.begin(), type.end(), type.begin(), ::toupper);
    if (pos.size() == 2) {
        key = req_str.substr(pos[1] + 1);
    } else {
        key = req_str.substr(pos[1] + 1, pos[2] - pos[1] - 1);
        val = req_str.substr(pos[2] + 1);
    }
    return make_tuple(type, key, val);
}

static bool do_set(acl::redis_string& cmd, const acl::string& key, const acl::string& val, std::string& output) {
    if (cmd.set(key.c_str(), val.c_str()) == false) {
        output = "[Error: redis set error!]";
        return false;
    }
    // "redis set okay!"
    output = "set key ok, value:" + std::string(val.c_str());
    return true;
}

static bool do_get(acl::redis_string& cmd, acl::redis_key& cmd_key, const acl::string& key, acl::string& val, std::string& output) {
    if (cmd_key.exists(key) == false) {
        output = "key not exists";
        return true;
    }
    if (cmd.get(key.c_str(), val) == false) {
        output = "[Error: get key false]";
        return false;
    }
    output = "get key ok, value:" + std::string(val.c_str());
    return true;
}

int main(int argc, char *argv[]) {
    const char* redis_addr = "127.0.0.1:7000";
    int conn_timeout = 10, rw_timeout = 10, max_conns = 100;
    // 定义 redis 客户端集群管理对象
    acl::redis_client_cluster cluster;

    // 添加一个 redis 服务结点，可以多次调用此函数添加多个服务结点，
    // 因为 acl redis 模块支持 redis 服务结点的自动发现及动态添加
    // 功能，所以添加一个服务结点即可
    cluster.set(redis_addr, max_conns);

    int req_cnt = 0;
    Server server([&](auto & req, auto & res) {
        std::string std_type, std_key, std_val, output;
        tie(std_type, std_key, std_val) = parseReq(req.url);
        acl::string key(std_key.c_str()), val(std_val.c_str());

        // redis 字符串类 (STRING) 操作对象
        acl::redis_string cmd_string;
        acl::redis_key  cmd_key;
        // 给 redis 操作对象绑定 redis 客户端集群对象
        cmd_string.set_cluster(&cluster, max_conns);
        cmd_key.set_cluster(&cluster, max_conns);
        if (std_type == "SET") {
            do_set(cmd_string, key, val, output);
        } else if (std_type == "GET") {
            do_get(cmd_string, cmd_key, key, val, output);
        } else {
            output = "[Error: invalid operation `" + std_type + "`]";
        }
        cmd_string.clear();
        key.clear(); val.clear();
        res.setStatus(200);
        res.setHeader("Connection", "keep-alive");
        res.setHeader("Content-Type", "text/plain");
        res.setHeader("Transfer-Encoding", "chunked");
        res << output << endl;
        ++ req_cnt;
        if(req_cnt % 10000 == 0) cout << req_cnt << endl;
        // res << req.method << " " << req.url << endl;
    });
    server.listen("0.0.0.0", 8000);
}
