# traffic-accident-analyzer

## Docker Compose 構築
```shell
> docker-compose up -d
```

NameNode、DataNode、HiveServerコンテナが起動します。

## HDFS
NameNodeコンテナにログインして操作してください。
```shell
> docker compose exec -it namenode /bin/bash
```

## Hive
HiveServerコンテナにログインして操作してください。
```shell
// コンテナにログイン
> docker compose exec -it hive /bin/bash

// beelineで接続
> beeline -u jdbc:hive2://localhost:10000/
```

