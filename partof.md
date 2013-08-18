作業分担
=========

## GoogleDriveへのアクセスを行う

type    |    method
--------|----------
C       | ファイルアップロード
R       | ファイルダウンロード
       | ファイル一覧取得
       | アップロードされている全ファイル一覧
       | 該当アカウントでアップロードされているファイルの一覧
U       | アップロードしたファイル自体への更新（ID,ファイル名,アカウント）
D       | ファイル削除

### test
tluna
### make
inage

## GoogleAccountへのAuthを行う

1. トークン取得
2. トークンリフレッシュ
3. トークン期限切れ

### test
inage
### make
tluna

## 利用すると思われるライブラリについて話したもの

22:28
inage
http://www.eisbahn.jp/yoichiro/2012/10/google-drive-api-ruby-on-rails.html
Google Drive APIをRuby on Railsから叩く方法

22:31
inage
https://developers.google.com/drive/v2/reference/

22:32
inage
アップローダーのバックエンドとして設計

22:33
tluna
必要な機能：
GoogleDriveへのファイルアップロード、ファイルダウンロード

22:34
inage
扱い方としてはkey-valueストアを想定

22:34
tluna
GoogleDriveへアクセスするためのトークン取得（これ追記必要）

22:35
inage
トークンを入手するとき
・ストレージとして登録された時
・トークンの期限が切れた場合

22:52
inage
https://developers.google.com/drive/training/drive-apps/auth/about?hl=ja

22:53
inage
https://developers.google.com/drive/training/drive-apps/auth/credentials?hl=ja

22:53
inage
https://developers.google.com/adsense/tutorials/oauth-generic?hl=ja

22:53
inage
https://developers.google.com/adsense/tutorials/oauth-generic?hl=ja

23:33
inage
すかいぷみー

23:47
inage
ローカルデータベース
・ファイル名
・ファイルへのパス
・保存しているドライブ名？
・ドライブのユーザー名
・ユーザーのトークン

23:49
inage
http://www.ruby.or.jp/ja/tech/development/ruby/055_test.html

Rubyアソシエーション: テスト
www.ruby.or.jp
