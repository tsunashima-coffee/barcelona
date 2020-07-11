# 開発環境構築手順

1. 本リポジトリをclone

```bash
$ git clone git@github.com:tsunashima-coffee/barcelona.git
```

2. アプリケーションのディレクトリに移動

```bash
$ cd barcelona
```

3. Docker Network の作成

```bash
$ docker network create barcelona_network
```

4. build

```bash
$ docker-compose build --no-cache
```

5. bundle install

```bash
$ docker-compose run --rm web bundle install -j4 --path vendor/bundle
```

6. yarn install

```bash
$ docker-compose run --rm web yarn install
```

7. DB作成

```bash
$ docker-compose run --rm web bundle exec rails db:create
```

8. コンテナ起動

```bash
$ docker-compose up
```
