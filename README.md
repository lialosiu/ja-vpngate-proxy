# ja-vpngate-proxy

[VPNGate](http://www.vpngate.net/api/iphone/)から日本のVPNサーバだけを抽出してランダムに接続します  
ブラウザのプロキシ設定で`localhost:10888`を設定することで使用できます

> また、日本サーバであってもpublic-vpn-から始まるVPN(219.100.37.0/24)は同じ場所からのアクセスになってしまうため除外しました

# 起動

```bash
docker compose up -d
```

# 起動確認

proxy指定有り無しでcurlしてグローバルIPが異なっていれば成功です

```bash
$ curl inet-ip.info
$ curl inet-ip.info -x http://localhost:10888
```
