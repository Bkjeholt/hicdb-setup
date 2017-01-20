# hicdb-setup

The main purpose is to set up the database with correct tables, procedures, functions and views for the Home Information Center application suite.

The docker command to run is:
``` 
docker run -it \
           --rm \
           --link <Mysql container name>:mysql \
           bkjeholt/mysql-setup:<Tag>
``` 
