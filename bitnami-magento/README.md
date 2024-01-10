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

### Install zh-CN language package

[zh_CN language package](https://github.com/magento-l10n/language-zh_CN/tree/master)

```shell
docker exec -u root -it magento-magento-1 /bin/bash
cd /bitnami/magento
composer require community-engineering/language-zh_cn
php bin/magento setup:static-content:deploy zh_CN -f
php bin/magento indexer:reindex
php bin/magento cache:clean
php bin/magento cache:flush
```