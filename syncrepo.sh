#!/bin/bash

mkdir -p /tmp/mysql
mkdir -p /repos/mysql

reposync -n -c /opt/mysql-56-repo.conf -p /tmp/mysql -d -r mysql56-community -r mysql-connectors-community -r mysql-tools-community

createrepo /tmp/mysql/mysql56-community
createrepo /tmp/mysql/mysql-connectors-community
createrepo /tmp/mysql/mysql-tools-community

cp -R /tmp/mysql/ /repos/mysql/
rm -Rf /tmp/mysql

