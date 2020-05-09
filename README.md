## 准备工作
```
$ mkdir ./db ./web
$ git clone https://git.zabbix.com/scm/zbx/zabbix.git --branch 4.4.7 --depth 1 --single-branch zabbix-4.4.7
$ cp -R zabbix-4.4.7/frontends/php/* ./web/
```
- 注意：修改对应版本号

## Zabbix4.4.7 Docker-Compose

```
$ git clone https://github.com/weicoll/zabbix-docker-compose.git
$ cd zabbix-docker-compose
$ docker-compose up -d
```

## 访问方式
```buildoutcfg
- http://localhost
- https://localhost
```
