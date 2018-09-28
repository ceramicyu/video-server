#!/bin/sh


sudo docker pull mysql 


sudo docker stop mymysql

sudo docker remove  mymysql


sudo docker run -p 3306:3306 --name mymysql -v $PWD/conf:/etc/mysql/comf.d -v $PWD/logs:/logs -v $PWD/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql

