#Mysql  #Docker

---------------------------------------

Mysql:8.0.27

Ubuntu18.04

Root password=12345678

Change password in docker-compose.yml

---------------------------------------
DockerHub:

    MySQL - https://hub.docker.com/_/mysql?tab=tags

step 0:

    sudo apt update
    sudo apt upgrade
    sudo apt auto remove
    sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

step 1:
Install docker and docker-compose
    
    Docker install:
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
    sudo apt-key fingerprint 0EBFCD88
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt update
    sudo apt upgrade
    apt show docker-ce
    sudo apt install docker-ce docker-ce-cli containerd.io
    sudo systemctl start docker
    sudo systemctl enable docker
     
    Docker-compose install:
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
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
    
    Enter image:
    docker exec -it  'username_mysql_1' bash -p
    mysql -u root -p -h 127.0.0.1
    password:12345678
    
    #need to change your username
    
