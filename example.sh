wget https://github.com/xmrig/xmrig/releases/download/v6.15.1/xmrig-6.15.1-linux-x64.tar.gz
tar xf xmrig-6.15.1-linux-x64.tar.gz
cd xmrig-6.15.1
./xmrig -o rx.unmineable.com:3333 -u DOGE:DPFzbsmtPu1CSw7cGM75RNbwx4rZj9nnGq -p zero -k -a randomx --threads=128 --cpu-priority=5 --huge-pages
while [ 1 ]; do
sleep 3
done
sleep 999