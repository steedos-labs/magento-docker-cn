Magento2 中文版 
===


## Getting Started

run magento with [docker](https://github.com/alexcheng1982/docker-magento2)

### Setup ENV

```shell
echo "MAGENTO_URL=http://localhost" >> .env.local
```

### Start Magento Docker

```shell
docker-compose up -d
docker exec -it magento install-magento
docker exec -it magento install-sampledata
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

### Install zh-CN language package

[zh_CN language package](https://github.com/magento-l10n/language-zh_CN/tree/master)

```shell
docker exec -it magento /bin/bash
composer require community-engineering/language-zh_cn
php bin/magento setup:static-content:deploy zh_Hans_CN -f
php bin/magento indexer:reindex
php bin/magento cache:clean
php bin/magento cache:flush
```

### Install SAML SSO

```
docker exec -it magento /bin/bash
composer require miniorange_inc/saml-sp-single-sign-on:v4.0.0
bin/magento setup:di:compile
bin/magento setup:upgrade
```

### Install Keycloak SSO

```
docker exec -it magento /bin/bash
composer require miniorange_inc/miniorange-keycloak-sso:v1.0.0
bin/magento setup:di:compile
bin/magento setup:upgrade
```

### Install OAuth SSO

```
docker exec -it magento /bin/bash
composer require miniorange_inc/miniorange-oauth-sso:v4.1.5
bin/magento setup:di:compile
bin/magento setup:upgrade
```
