#以下は参考ですので、都度実行してください。それぞれ修正が必要です。
#管理画面からも可能ですが、せっかくなのでコマンドラインで実施してみましょう。
#以下、個別のユーザ環境にbashをインストール
curl https://sdk.cloud.google.com | bash
. ~/.bash_profile

gcloud auth login             ###ブラウザからログインが必要
gcloud config set project cloud-ace-demo      ###プロジェクト名は自分のものを指定する。
gcloud sql instances create wp-demo --region asia-east1 --assign-ip --authorized-networks “104.199.151.134“                         ### インスタンス名（任意）IPアドレスは自分のGCEのものを指定
