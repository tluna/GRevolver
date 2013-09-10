# language: ja

機能: ファイルの情報を表示する
  前提 ファイルの情報をリクエストされた
  #必ずしもファイル一覧から指定されるとはかぎらない
  かつ 指定されたファイルがファイルリストに存在する
  #ストレージに存在しないとダウンロード出来ない
  もし ファイルをアップロードしたストレージアカウントが存在する
  ならば ファイルの情報を表示できる

機能: ストレージに存在しないファイル情報を表示する
  前提 ファイルの情報をリクエストされた
  #必ずしもファイル一覧から指定されるとはかぎらない
  かつ 指定されたファイルがファイルリストに存在する
  #ストレージに存在しないとダウンロード出来ない
  もし アップロードしたストレージが使えない
  ならば ストレージに存在しないファイルとして情報を表示する

機能: ファイルリストに存在しないファイル情報は表示できない
  前提 ファイルの情報をリクエストされた
  #必ずしもファイル一覧から指定されるとはかぎらない
  かつ 指定されたファイルがファイルリストに存在しない
  ならば エラー情報を表示する
vagrant@rails-starter-box:~/dev/GRevolver/spec/feature$ ll
合計 36
drwxrwxr-x 2 vagrant vagrant 4096  9月  9 17:41 ./
lrwxrwxrwx 1 vagrant vagrant   41  9月  9 17:41 .#get_fileinfo.feature -> vagrant@rails-starter-box.4350:1377449884
drwxrwxr-x 3 vagrant vagrant 4096  8月 30 17:22 ../
-rw-rw-r-- 1 vagrant vagrant    0  8月 20 22:44 env.rb
-rw-rw-r-- 1 vagrant vagrant 1339  9月  9 17:38 get_fileinfo.feature
-rw-rw-r-- 1 vagrant vagrant   14  9月  9 16:58 get_fileinfo.feature~
-rw-rw-r-- 1 vagrant vagrant 1120  9月  9 16:55 get_uploaded_filelist.feature
-rw-rw-r-- 1 vagrant vagrant  676  9月  9 16:22 get_uploaded_filelist.feature~
-rw-rw-r-- 1 vagrant vagrant   98  8月 25 11:06 grevolver_get_token.feature
-rw-rw-r-- 1 vagrant vagrant  263  8月 29 17:50 make_bullets.feature
-rw-rw-r-- 1 vagrant vagrant  293  8月 29 17:48 set_cylinder.feature
vagrant@rails-starter-box:~/dev/GRevolver/spec/feature$ cp get_fileinfo.feature download_file.feature
vagrant@rails-starter-box:~/dev/GRevolver/spec/feature$ ll
合計 40
drwxrwxr-x 2 vagrant vagrant 4096  9月  9 17:42 ./
lrwxrwxrwx 1 vagrant vagrant   41  9月  9 17:41 .#get_fileinfo.feature -> vagrant@rails-starter-box.4350:1377449884
drwxrwxr-x 3 vagrant vagrant 4096  8月 30 17:22 ../
-rw-rw-r-- 1 vagrant vagrant 1339  9月  9 17:42 download_file.feature
-rw-rw-r-- 1 vagrant vagrant    0  8月 20 22:44 env.rb
-rw-rw-r-- 1 vagrant vagrant 1339  9月  9 17:38 get_fileinfo.feature
-rw-rw-r-- 1 vagrant vagrant   14  9月  9 16:58 get_fileinfo.feature~
-rw-rw-r-- 1 vagrant vagrant 1120  9月  9 16:55 get_uploaded_filelist.feature
-rw-rw-r-- 1 vagrant vagrant  676  9月  9 16:22 get_uploaded_filelist.feature~
-rw-rw-r-- 1 vagrant vagrant   98  8月 25 11:06 grevolver_get_token.feature
-rw-rw-r-- 1 vagrant vagrant  263  8月 29 17:50 make_bullets.feature
-rw-rw-r-- 1 vagrant vagrant  293  8月 29 17:48 set_cylinder.feature
vagrant@rails-starter-box:~/dev/GRevolver/spec/feature$ 
