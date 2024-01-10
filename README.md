Steedos Magento Connector
===


## Getting Started

run magento with [docker](https://github.com/alexcheng1982/docker-magento2)

### Setup ENV

```shell
export MAGENTO_HOST=localhost
```

### Start Magento

```shell
docker-compose up
docker exec -it magento install-magento
```


### Install zh-CN language package

[zh_CN language package](https://github.com/magento-l10n/language-zh_CN/tree/master)

```shell
docker exec -u root -it magento /bin/bash
composer require community-engineering/language-zh_cn
php bin/magento setup:static-content:deploy zh_Hans_CN -f
php bin/magento indexer:reindex
php bin/magento cache:clean
php bin/magento cache:flush
```

### Login to Admin

http://localhost/admin
admin
magentorocks1


### Reset Docker and REMOVE Volumes

```shell
docker-compose down
docker volume rm opensearch-data
docker volume rm magento-data
docker volume rm mysql-data
```
