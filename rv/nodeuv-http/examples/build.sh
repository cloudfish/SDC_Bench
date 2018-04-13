CXX=riscv64-unknown-linux-gnu-g++
BASE_PATH=${PWD}/../
${CXX} ${BASE_PATH}/src/http.cc ${BASE_PATH}/src/http-server.cc ${BASE_PATH}/src/http-client.cc server.cc\
    ${BASE_PATH}/../lib/libz.a \
    ${BASE_PATH}/../lib/libcurl.a \
    ${BASE_PATH}/../lib/libhiredis.a \
    ${BASE_PATH}/../lib/lib_acl.a \
    ${BASE_PATH}/../lib/lib_protocol.a \
    ${BASE_PATH}/../lib/lib_acl_cpp.a \
	-lm \
	-ldl \
	-lrt \
    -pthread \
	-O3 \
    -g \
    --std=c++1y \
    -fstrict-aliasing \
    -ffunction-sections \
    -fPIC \
    -Wno-narrowing \
	-I ${BASE_PATH}/deps/nodeuv-uri \
	-I ${BASE_PATH}/deps/libuv/include \
	-I ${BASE_PATH}/deps/http-parser \
	-I ${BASE_PATH}/incs \
    ${BASE_PATH}/build/out/Release/obj.target/deps/http-parser/libhttp_parser.a \
	${BASE_PATH}/build/out/Release/obj.target/deps/libuv/libuv.a \
	${BASE_PATH}/build/out/Release/obj.target/libnodeuv-http.a \
    -o http-server

