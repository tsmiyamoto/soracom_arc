# SORACOM Arc on Docker

Docker で SORACOM Arc を利用するための Dockerfile とシェルスクリプト

## 実行

### コンテナの起動

```bash
git clone git@github.com:tsmiyamoto/soracom_arc_on_docker.git
cd soracom_arc_on_docker
docker build -t soracom_arc .
docker run --cap-add NET_ADMIN -it soracom_arc
```

## ブートストラップ（初回コンテナ起動時のみ）

```bash
cd ~
./bootstrap.sh
```

SORACOM のアクセスキー ID とシークレットアクセスキーを入力。
また、カバレッジは`Japan coverage`を選択。

## セッションスタート

```bash
./start.sh
```

画像のような出力になれば OK です。
![](https://docs.google.com/drawings/d/e/2PACX-1vS4Q2vUd5I5nQDahB4tiDLp9OgVhZ8o7byKW9pnqGP7X9IZ6L0xze8PmKqS8bhR8gOIzhP0RN9wPaBn/pub?w=959&h=419)

### 💡Tips

Arc は意図的に解約ボタンを押さない限り SIM が生き続けます。管理しやすいように各バーチャル SIM に `名前`-container-`container_id` と名前をつけておきましょう。
![](https://docs.google.com/drawings/d/e/2PACX-1vROJONZeE3EqJo_sCZgx1l5XTbFYFYtfunMQEGS9WadTmdUAqPXR_Oy3yTeyw99WAQ5MCl7yXQh2GL3/pub?w=801&h=138)

## 参考

- [Docker で SORACOM Arc を使う (Ubuntu 20.04)
  ](https://qiita.com/tik26/items/9cb8191ecb937a68e124)
- [soratun で SORACOM API の認証キーを使用してバーチャル SIM/Subscriber をブートストラップする](https://users.soracom.io/ja-jp/docs/arc/bootstrap-authkey/)
