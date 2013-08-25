# -*- coding: utf-8 -*-
require "rubygems"
require "rspec"
require "oauth_token_managements"

describe OauthTokenManagement do
  share_examples_for "リフレッシュトークンがある場合" do

    context "accessトークンの有効期限を確認" do
    end
    context "リフレッシュトークンの認証" do
    end
    context "accessトークンをもらう" do
      #データベースに格納する
    end
  end

  context "初回認証フロー" do
    context "ユーザーIDの取得"do
    end
    context "メールアドレスの取得" do
    end
    context "承認コードを受け取る" do
      #GoogleDriveにOauthでアプリケーションの承認を求める
      #ユーザーが承認すると、リダイレクトされるURLのcodeパラメータにある承認コードが貰える
      #権限無効とトークンの期限切れ以外は再認証で権限を付与してもらうように、ユーザーをリダイレクトすること。
    end
    its_shouled_behave_like "トークンがある場合"
    context "リフレッシュトークンとメールアドレスをユーザーIDでインデックス付けして保存" do
    end
  end

  context "有効期限内のaccessトークンを持っている場合" do
    #成功を返す？
  end
  
  context "期限切れのaccessトークンを持っている場合" do
    context "エラーの種別を判定" do
      #Ivalid Credentialsはユーザが権限を無効化
      its_shouled_behave_like "リフレッシュトークンがある場合"    
    end
    
  end



end

