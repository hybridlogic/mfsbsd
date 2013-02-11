#/bin/sh
sudo rm mfsbsd-se-9.1-STABLE-amd64.iso
sudo make clean
sudo make iso CUSTOM=1 SE=1 ROOTHACK_FILE=/usr/home/hybrid/mfsbsd/tools/roothack/roothack KERNCONF=DTRACE DEBUG=1
# TODO Autodetect the version number
scp -P 224 mfsbsd-se-9.1-STABLE-amd64.iso ftp@hybrid-sites.com:9-STABLE-r245725-83979b7-amd64.iso; scp -P 224 tmp/dist/9.1-STABLE-amd64.tar.xz ftp@hybrid-sites.com:9-STABLE-r245725-83979b7-amd64.tar.xz

