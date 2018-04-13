#include <curl/curl.h>
#include <sstream>
#include <iostream>
using namespace std;

class HttpRequest {
private:
    CURL* curl;
    stringstream ss;
    long http_code;
public:
    HttpRequest()
        : curl(curl_easy_init())
        , http_code(0)
    {

    }
    ~HttpRequest()
    {
        if (curl) curl_easy_cleanup(curl);
    }
    std::string Get(const std::string& url)
    {
        CURLcode res;
        curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
        curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1L);
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_data);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, this);

        ss.str("");
        http_code = 0;
        res = curl_easy_perform(curl);
        if (res != CURLE_OK)
        {
            throw std::runtime_error(curl_easy_strerror(res));
        }
        curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &http_code);
        return ss.str();
    }
    long GetHttpCode()
    {
        return http_code;
    }
private:
    static size_t write_data(void *buffer, size_t size, size_t nmemb, void *userp)
    {
        return static_cast<HttpRequest*>(userp)->Write(buffer, size, nmemb);
    }
    size_t Write(void *buffer, size_t size, size_t nmemb)
    {
        ss.write((const char*)buffer, size * nmemb);
        return size * nmemb;
    }
};