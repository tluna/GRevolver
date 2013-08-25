# -*- coding: utf-8 -*-
require "rubygems"
require "rspec"
requrie "oauth_token_managements"

describe OauthTokenManagement do

  share_examples_for "トークンを持っている場合" do
=begin    
  end
    before "トークン取得" do
      @token ={:access_token => "access_token",:refresh_token => "refresh_token"}
      @user = {:id => "userid",:email =>"user@gmail.com"}
    end
=end
      its(:token) { should_not be_empty }
      it { }
    end
  end
  
nend
トークンを持っているか確認
トークンの有効期限を確認
トークンの認証
ユーザーIDの取得
メールアドレスの取得
2
ユーザー認証にはUserInfoServiceを呼び出して、ユーザーIDとプロフィールを取得する
新しい承認コードを受け取るたびに認証を実行する
エラーの種別を判定
Ivalid Credentialsはユーザが権限を無効化
権限無効とトークンの期限切れ以外は再認証で権限を付与してもらうように、ユーザーをリダイレクトすること。
初回承認フロー
GoogleDriveにOauthでアプリケーションの承認を求める
ユーザーが承認すると、リダイレクトされるURLのcodeパラメータにある承認コードが貰える
accessトークンとリフレッシュトークンをもらう
リフレッシュトークンとメールをユーザーIDでインデックス付けして保存
DriveAPIにリクエストを送る
