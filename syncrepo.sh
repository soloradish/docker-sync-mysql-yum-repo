#!/bin/bash

mkdir -p /repos/mysql
reposync -n -c /opt/mysql-56-repo.conf -p /repos/mysql -d -r mysql56-community -r mysql-connectors-community -r mysql-tools-community
createrepo /repos/mysql/mysql56-community
createrepo /repos/mysql/mysql-connectors-community
createrepo /repos/mysql/mysql-tools-community
