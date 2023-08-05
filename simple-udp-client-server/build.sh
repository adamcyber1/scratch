#!/bin/sh
gcc -O3 -Wall -Wextra -Wno-unused-parameter \
    -ggdb -g -pthread \
    -o udpreceiver udp-receiver.c common.c

gcc -O3 -Wall -Wextra -Wno-unused-parameter \
    -ggdb -g -pthread \
    -o udpsender udp-sender.c common.c