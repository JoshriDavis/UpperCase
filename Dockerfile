FROM ubuntu

COPY BuildAndRun.sh /BuildAndRun.sh
COPY CMakeLists.txt /CMakeLists.txt
COPY main.cpp /main.cpp
COPY build /build
COPY UpperCase /UpperCase

RUN chmod +x /BuildAndRun.sh

ENTRYPOINT ["/BuildAndRun.sh"]
