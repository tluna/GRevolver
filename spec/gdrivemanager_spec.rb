# coding: utf-8

require "rspec"
require "./lib/gdrivemanager"

describe GDriveManager do
  share_examples_for "GDriveManager" do
    
  end
  
  context "#getlist" do
    context "ファイルの一覧を取得する" do
      subject {GDriveManager.new}
      its(:getlist){ should_not be_empty}
    end
  end

  context "#getlist('test')" do
    it "タグ'test'の付いたファイルの一覧を取得する" do
      GDriveManager.getlist("test").name.should == "テストファイル"      
    end
  end
  # ファイルアップロード
  describe '#putfile' do
    # 認証失敗時

    # 認証有効時
    # ファイル正常系
    context '同一名称のファイルなし' do
    end
    context '同一名称のファイルあり' do
    end

    # ファイル異常系
    context 'ファイルサイズ0' do
    end
    context 'ファイルサイズが5GB以上' do
    end
    context 'ファイルサイズ名にファイル名として利用できない文字' do
    end

    # アカウント異常系
    context 'アップロード試行したアカウントの容量オーバー' do
    end
    context 'ファイルアップロードできるアカウントが存在しない' do
    end
    context 'ファイルアップロードできるアカウントが存在しない(アカウントの容量がすべていっぱい)' do
    end

    # アップロード処理中エラー(色々まとめて もし戻せるなら戻して処理を再開するフローがほしい)
    context 'ファイルアップロードエラー' do
    end

    # ファイル正常系
    context '同一名称のファイルなし' do
    end
    context '同一名称のファイルあり' do
    end

    # ファイル異常系
    context 'ファイルサイズ0' do
    end
    context 'ファイルサイズが5GB以上' do
    end
    context 'ファイルサイズ名にファイル名として利用できない文字' do
    end

    # アカウント異常系
    context 'アップロード試行したアカウントの容量オーバー' do
    end
    context 'ファイルアップロードできるアカウントが存在しない' do
    end
    context 'ファイルアップロードできるアカウントが存在しない(アカウントの容量がすべていっぱい)' do
    end

    # アップロード処理中エラー(色々まとめて もし戻せるなら戻して処理を再開するフローがほしい)
    context 'ファイルアップロードエラー' do
    end
  end

  # ファイル取得
  describe '#getfile' do
    # 認証失敗時

    # 認証有効時
    # ファイルアクセス異常
    context '登録されているファイルが1件も無い' do
    end
    context '該当のファイルが存在しない' do
    end

    # ファイルダウンロード中エラー(URL返却しちゃうから不要のはず)

  end

  # ファイル一覧取得
  describe '#getfilelist' do
    # 認証失敗時

    # 認証有効時
    # ファイルアクセス異常
    context 'ファイルが一件も登録されていない' do
    end
    context 'ファイルIDが登録されていないレコードが存在' do
    end
  end

  # ファイル検索
  describe '#searchfile' do
    # 認証失敗時

    # 認証有効時
    # ファイルアクセス異常
    context 'ファイルが一件も登録されていない' do
    end
    context '検索した名称ではファイルが一件も登録されていない' do
    end
    context 'ファイルIDが登録されていないレコードが存在' do
    end

  end

  # ファイル置換
  describe '#replacefile' do
    # 認証失敗時

    # 認証有効時
    # ファイルアクセス異常(全アカウント対象)
    context 'ファイルが一件も登録されていない' do
    end
    context '指定したファイルIDでの登録がない' do
    end

    # ファイルアクセス異常(アカウント指定)
    context '該当ファイルが登録されていない' do
    end

    # アカウント異常系
    context 'アップロード試行したアカウントの容量オーバー' do
    end
    context 'ファイルアップロードできるアカウントが存在しない' do
    end
    context 'ファイルアップロードできるアカウントが存在しない(アカウントの容量がすべていっぱい)' do
    end

    # アップロード処理中エラー(色々まとめて もし戻せるなら戻して処理を再開するフローがほしい)
    context 'ファイルアップロードエラー' do
    end
  end

  # ファイル削除
  describe '#deletefile' do
    # 認証失敗時

    # 認証有効時
    # ファイル存在エラー
    context '指定ファイルID存在しない' do
    end
    context 'ファイルIDに紐づくファイルが存在しない' do
    end
    # ファイルアクセス異常(全アカウント対象)
    context 'ファイルが一件も登録されていない' do
    end
    context '指定したファイルIDでの登録がない' do
    end

    # ファイルアクセス異常(アカウント指定)
    context '該当ファイルが登録されていない' do
    end
  end
end
