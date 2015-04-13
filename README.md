# gcp-demos 
#事前準備
Googleアカウントがあって、GCPの課金設定までは終了していることを前提とする。

#wp-startup
ComputeEngine + CloudSQLでWordpressを構築するデモ・ハンズオンです。
慣れた方であれば10分かからないでしょう。

####1.サーバ準備
Devコンソールからn1-standard-1Ubuntu最新版インスタンスをアジアで立ち上げる。  
httpとhttpsを許可するように設定してください。  
ブラウザ等からSSHでログインし、以下で最新化して、gitを入れる  
>sudo apt-get update -y  
>sudo apt-get upgrade -y  
>sudo apt-get install -y git

####2.ハンズオン資料取得
このフォルダを取得しましょう。
>git clone https://github.com/gcpug/gcp-demos  
>cd gcp-demos/wp-startup  

####3.gcp-demos/wp-startup
wp-startup-1.sh  
を実行する。  
→実行したら、管理コンソールのIPをクリックして、Ubuntuのデフォルト画面が表示されていることを確認する。  

####4.Wordpressのダウンロード
wp-startup-2.sh  
を実行する。  
  
→これでWeb画面に再度アクセスしてWPのWelcomeページにっていることを確認。  

####5.CloudSQLの設定  
wp-startup-3.sh  
を実行する。  
  
これはシェルでは無く、参考ですので、都度実行してください。それぞれ修正が必要です。  

インスタンスが作成できたら、CloudSQLの管理コンソール側から、ユーザを追加する。（これは現状コマンドではできなさそう）  
  
作成されたアカウントで以下のようなコマンドで接続出来ることを確認。  
>mysql -u test -p -h 173.194.106.46  

接続できたらデータベース作成  
>create database wptest;  

####6.Wordpressのインストール  
以上で準備完了ですので、後はWordpressのインストールを画面から行います。  
Web画面から再度アクセスして確認  
