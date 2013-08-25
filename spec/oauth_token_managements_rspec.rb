# -*- coding: utf-8 -*-
require "rubygems"
require "rspec"
requrie "oauth_token_managements"

describe OauthTokenManagement do
  share_examples_for "トークンがある場合" do
  
    context "トークンの有効期限を確認" do
    end
    context "トークンの認証" do
#GoogleDriveにOauthでアプリケーションの承認を求める
    end
    context "accessトークンとリフレッシュトークンをもらう" do
      #データベースに格納する
    end
  end

  context "初回認証フロー" do
    context "ユーザーIDの取得"do
    end
    context "メールアドレスの取得" do
    end
    context "承認コードを受け取る" do
#ユーザーが承認すると、リダイレクトされるURLのcodeパラメータにある承認コードが貰える
      #権限無効とトークンの期限切れ以外は再認証で権限を付与してもらうように、ユーザーをリダイレクトすること。
    end
    its_shouled_behave_like "トークンがある場合"
    context "リフレッシュトークンとメールアドレスをユーザーIDでインデックス付けして保存" do
    end
  end

  context "エラーの種別を判定" do
    #Ivalid Credentialsはユーザが権限を無効化
  end

end

