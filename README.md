#Mysql  #Docker

---------------------------------------

Mysql:8.0.27

Ubuntu18.04

Root password=12345678

Change password in docker-compose.yml

---------------------------------------
DockerHub:

    MySQL - https://hub.docker.com/_/mysql?tab=tags

#Docker安裝

    # 系统更新
     sudo apt update
     sudo apt upgrade
     sudo apt autoremove
    # 安裝系統依賴包
     sudo apt-get install \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common
    # 加入Docker訊息庫密鑰
     curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
    # key确认
     apt-key list
    # 最後8位作為fingerprint参數
     sudo apt-key fingerprint 0EBFCD88
    # 將Docker訊息庫加入本地訊息庫端
     sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"
    # 查看OS採用核心號
     lsb_release -cs
    # 查看訊息庫加入的位置和内容
     cat /etc/apt/sources.list|grep docker

    # 系统再更新
     sudo apt update
     sudo apt upgrade
    # Docker安装
     apt show docker-ce
     sudo apt install docker-ce docker-ce-cli containerd.io
    # 校檢安装
     docker help
     docker version
     sudo docker run hello-world

    Docker-compose install:
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    

step 1:
    
    sudo apt-get install git-all
    git clone https://github.com/HouStanley456/Docker-Mysql.git
    
step 2:
    
    sudo docker-compose build
    sudo docker-compose up -d
    sudo docker-compose ps
    sudo docker-compose run mysql ls
    
step 3:
    
    Enter image:
    docker exec -it  'username_mysql_1' bash -p
    mysql -u root -p -h 127.0.0.1
    password:12345678
    
    #need to change your username
    
