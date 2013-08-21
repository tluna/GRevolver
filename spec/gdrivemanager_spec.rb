# coding: utf-8

require 'rspec'
require 'gdrivemanager'

describe GDriveManager do
  # ファイルアップロード
  describe '#putfile' do
    # トークン異常系
    context 'アクセストークンなし' do
    end
    context 'アクセストークン期限切れ' do
    end
    context 'アクセストークン認証失敗' do
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

  describe '#getfile' do
    # トークン異常系
    context 'アクセストークンなし' do
    end
    context 'アクセストークン期限切れ' do
    end
    context 'アクセストークン認証失敗' do
    end

    # ファイルアクセス異常
    context '登録されているファイルが1件も無い' do
    end
    context '該当のファイルが存在しない' do
    end

    # ファイルダウンロード中エラー(URL返却しちゃうから不要のはず)
  end

  describe '#getfilelist' do
    # トークン異常系
    context 'アクセストークンなし' do
    end
    context 'アクセストークン期限切れ' do
    end
    context 'アクセストークン認証失敗' do
    end

    # ファイルアクセス異常
    context 'ファイルが一件も登録されていない' do
    end
    context 'ファイルIDが登録されていないレコードが存在' do
    end

  end

  describe '#searchfile' do
    # トークン異常系
    context 'アクセストークンなし' do
    end
    context 'アクセストークン期限切れ' do
    end
    context 'アクセストークン認証失敗' do
    end

    # ファイルアクセス異常
    context 'ファイルが一件も登録されていない' do
    end
    context '検索した名称ではファイルが一件も登録されていない' do
    end
    context 'ファイルIDが登録されていないレコードが存在' do
    end

  end

  describe '#replacefile' do
    # トークン異常系
    context 'アクセストークンなし' do
    end
    context 'アクセストークン期限切れ' do
    end
    context 'アクセストークン認証失敗' do
    end

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

  describe '#deletefile' do
    # トークン異常系
    context 'アクセストークンなし' do
    end
    context 'アクセストークン期限切れ' do
    end
    context 'アクセストークン認証失敗' do
    end

    # ファイル存在エラー

  end
