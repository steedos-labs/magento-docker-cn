Bitnami package for Magento
===

https://github.com/hotlong/bitnami-containers/tree/main/bitnami/magento

## Getting Started

### Setup ENV

```shell
export MAGENTO_HOST=localhost
```

### Start Magento

```shell
docker-compose up
```

### Login to Admin

http://localhost/admin
user
bitnami1


### Reset Docker and REMOVE Volumes

```shell
docker-compose down
docker volume rm magento_elasticsearch_data
docker volume rm magento_magento_data
docker volume rm magento_mariadb_data
```

## Install Extentions

###  Getting Magento authentication keys

In order to properly upgrade Magento, you will need Magento authentication keys that will be used to fetch the Magento updates. To obtain these keys, follow [this guide](https://devdocs.magento.com/guides/v2.4/install-gde/prereq/connect-auth.html).

```
docker exec -u root -it magento-magento-1 /bin/bash
cd /bitnami/magento
composer require magento/language-zh_hans_cn
php bin/magento module:enable magento/language-zh_hans_cn
php bin/magento setup:upgrade
php bin/magento setup:di:compile
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
```