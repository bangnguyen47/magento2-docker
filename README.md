# magento2-docker
This is architecture build for magento 2.4
# Tech stack
- Nginx 1.9
- Php-fpm 7.4
- Mysql 8.0
- Elastic Search 7.9.0
# Install
Login to php container
```
docker exec -it php7.4-fpm bash
```
Install magento 2.4
```
php bin/magento setup:install --base-url=https://magento2.docker/ \
--db-host=db --db-name=magento2 --db-user=magento2 --db-password=magento2 \
--admin-firstname=admin --admin-lastname=admin --admin-email=admin@example.com \
--admin-user=admin --admin-password=admin123 --language=en_US \
--currency=USD --timezone=America/Chicago --use-rewrites=1 \
--search-engine=elasticsearch7 --elasticsearch-host=elasticsearch \
--elasticsearch-port=9200
```
