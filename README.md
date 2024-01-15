Magento2 中文版 
===

Run Magento with docker.

## Getting Started

### Setup ENV

```shell
echo "MAGENTO_URL=http://localhost" >> .env.local
```

For admin username and password, please refer to the file `.env`. You can also change the file `env` to update those configurations. Below are the default configurations.

```shell
MYSQL_HOST=db
MYSQL_ROOT_PASSWORD=myrootpassword
MYSQL_USER=magento
MYSQL_PASSWORD=magento
MYSQL_DATABASE=magento

MAGENTO_LANGUAGE=zh_Hans_CN
MAGENTO_TIMEZONE=Asia/Shanghai
MAGENTO_DEFAULT_CURRENCY=CNY
MAGENTO_URL=http://local.magento
MAGENTO_BACKEND_FRONTNAME=admin
MAGENTO_USE_SECURE=0
MAGENTO_BASE_URL_SECURE=
MAGENTO_USE_SECURE_ADMIN=0

MAGENTO_ADMIN_FIRSTNAME=Admin
MAGENTO_ADMIN_LASTNAME=MyStore
MAGENTO_ADMIN_EMAIL=amdin@example.com
MAGENTO_ADMIN_USERNAME=admin
MAGENTO_ADMIN_PASSWORD=magentorocks1

OPENSEARCH_HOST=opensearch
```

### Start Magento Docker

```shell
docker-compose up -d
docker-compose exec -it magento install-magento
docker-compose exec -it magento install-sampledata
```

### Login to Admin

http://localhost/admin
admin
magentorocks1


### Stop Docker

```shell
docker-compose down
```

### Stop Docker and REMOVE Volumes

```shell
docker-compose down -v
```

## Install Extensions 


### Install SAML SSO

```
docker-compose exec -it magento /bin/bash
composer require miniorange_inc/saml-sp-single-sign-on:v4.0.0
bin/magento setup:di:compile
bin/magento setup:upgrade
```

### Install Keycloak SSO

```
docker-compose exec -it magento /bin/bash
composer require miniorange_inc/miniorange-keycloak-sso:v1.0.0
bin/magento setup:di:compile
bin/magento setup:upgrade
```

### Install OAuth SSO

```
docker-compose exec -it magento /bin/bash
composer require miniorange_inc/miniorange-oauth-sso:v4.1.5
bin/magento setup:di:compile
bin/magento setup:upgrade
```
