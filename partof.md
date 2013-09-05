作業分担
=========

## アップローダの設計

type |    method|   params|
-----|----------|---------|
C    | ファイルアップロード | fileid userid filename |
R    | ファイルダウンロード | fileid |
R    | 全ファイル一覧 | no arguments |
R    | ファイル一覧取得(該当ユーザのファイル一覧) | userid |
R    | 指定されたファイル名のファイルID取得 | filename |
U    | アップロードしたファイル自体への更新 | fileid, filename, filedata(ファイルを更新) |
D    | アップロードしたファイルの削除 | fileid |
D    | アップロードしたファイルの削除(アカウント指定のファイル削除) | fileid, userid  |


## GoogleAccountへのAuthを行う

1. トークン取得
2. トークンリフレッシュ
3. トークン期限切れ

#参考資料
gem google_drive
http://gimite.net/doc/google-drive-ruby/GoogleDrive.html#method-c-login_with_oauth

##redis ケーススタディ
http://redis.shibu.jp/tutorial/
##redis README イントロダクション
https://bitbucket.org/shibu/redis_docjp/overview

##テストの書き方
http://www.ruby.or.jp/ja/tech/development/ruby/055_test.html
##cucumberからturnipへ
http://magazine.rubyist.net/?0042-FromCucumberToTurnip


##turnip
http://gongo.hatenablog.com/entry/2013/05/29/223218

##フィーチャの文法 Gherkin
http://blog.eiel.info/blog/2013/02/12/gherkin/
http://qiita.com/sawanoboly@github/items/268e1a60aaa7e730b4df
