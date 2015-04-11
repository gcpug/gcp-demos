# gcp-demos 
#1.サーバ準備
Devコンソールからn1-standard-1Ubuntu最新版インスタンスをアジアで立ち上げる。
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git

#2.ハンスON資料取得
git clone https://github.com/gcpug/gcp-demos

#3.gcp-demos/wp-startup
wp-startup-1.sh
を実行する。
→実行したら、管理コンソールのIPをクリックして、Ubuntuのデフォルト画面が表示されていることを確認する。

#4.Wordpressのダウンロード
wp-startup-2.sh
を実行する。

→これで再度アクセスしてWPのWelcomeページにっていることを確認。

#5.CloudSQLの設定
wp-startup-3.sh
を実行する。

これはシェルでは無く、参考ですので、都度実行してください。それぞれ修正が必要です。

以下のようなコマンドで接続出来ることを確認。データベース作成
mysql -u test -p -h 173.194.106.46
create database wptest;

6.Wordpressのインストール
画面から再度アクセスして確認




