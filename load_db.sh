docker-compose exec db mysql -u root --password=$MYSQL_ROOT_PASSWORD < /dnsconformance/Database/mkdb.sql
docker-compose exec db mysql -u dnsconf --password=NitPicky dnsconf < /dnsconformance/dnsconformance-database.sql
