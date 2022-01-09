Mysql on Docker

Mysql:8.0.27

DockerHub:

    MySQL - https://hub.docker.com/_/mysql?tab=tags

step 1:
Install docker and docker-compose
    
    Docker install
    sudo yum install -y yum-utils
    sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
    sudo yum install docker-ce docker-ce-cli containerd.io
    
    Docker-compose install
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/ \
    docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    
step 2:
    
    docker pull mysql:8.0.27

step 3:
    
    sudo apt-get install git-all
    git clone https://github.com/HouStanley456/Docker-Mysql.git
    
step 4:
    
    sudo docker-compose build
    sudo docker-compose up -d
    sudo docker-compose ps
    sudo docker-compose run mysql ls
    
step 5:
    
    into image:
    docker exec -it  'Name' bash -p
    mysql -u root -p -h 127.0.0.1
    password:12345678
    
    
    
