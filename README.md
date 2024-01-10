Magento2 中文版 
===


## Getting Started

run magento with [docker](https://github.com/alexcheng1982/docker-magento2)

### Setup ENV

```shell
export MAGENTO_HOST=localhost
```

### Start Magento Docker

```shell
cd docker
docker-compose up
docker exec -it docker-magento-1 install-magento
docker exec -it docker-magento-1 install-sampledata
```


### Install zh-CN language package

[zh_CN language package](https://github.com/magento-l10n/language-zh_CN/tree/master)

```shell
docker exec -it docker-magento-1 /bin/bash
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
docker volume rm docker_opensearch-data
docker volume rm docker_magento-data
docker volume rm docker_mysql-data
```
