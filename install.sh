curl https://bgsrb.github.io/dockerme/docker.sh -o docker.sh
sudo sh docker.sh 
docker pull hwdsl2/ipsec-vpn-server
docker run \
    --name ipsec-vpn-server \
    --env-file ./vpn.env \
    --restart=always \
    -p 500:500/udp \
    -p 4500:4500/udp \
    -d --privileged \
    hwdsl2/ipsec-vpn-server
