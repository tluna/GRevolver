# coding: utf-8

require 'rspec'
require 'gdrivemanager'

describe GDriveManager do
  # ファイルアップロード
  describe '#putfile' do
    share_examples_for "認証失敗時" do
    end

    share_examples_for "認証成功時" do
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
  end

  # ファイル取得
  describe '#getfile' do
    share_examples_for "認証失敗時" do
    end

    share_examples_for "認証成功時" do

      # ファイルアクセス異常
      context '登録されているファイルが1件も無い' do
      end
      context '該当のファイルが存在しない' do
      end

      # ファイルダウンロード中エラー(URL返却しちゃうから不要のはず)
    end

  end

  # ファイル一覧取得
  describe '#getfilelist' do
    share_examples_for "認証失敗時" do
    end

    share_examples_for "認証成功時" do

      # ファイルアクセス異常
      context 'ファイルが一件も登録されていない' do
      end
      context 'ファイルIDが登録されていないレコードが存在' do
      end
    end
  end

  # ファイル検索
  describe '#searchfile' do
    share_examples_for "認証失敗時" do
    end

    share_examples_for "認証成功時" do

      # ファイルアクセス異常
      context 'ファイルが一件も登録されていない' do
      end
      context '検索した名称ではファイルが一件も登録されていない' do
      end
      context 'ファイルIDが登録されていないレコードが存在' do
      end

    end
  end

  # ファイル置換
  describe '#replacefile' do
    share_examples_for "認証失敗時" do
    end

    share_examples_for "認証成功時" do

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
  end

  # ファイル削除
  describe '#deletefile' do
    # 不要
    share_examples_for "認証失敗時" do
    end

    share_examples_for "認証成功時" do

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
end
