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