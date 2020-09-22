require 'rails_helper'
RSpec.describe 'クライアント管理機能', type: :system do
  before do
    # あらかじめクライアント一覧のテストで使用するためのクライアントを二つ作成する
    FactoryBot.create(:user)
    FactoryBot.create(:client)
    FactoryBot.create(:second_client)
  end
  describe '新規作成機能' do
    context 'クライアントを新規作成した場合' do
      it '作成したタスクが表示される' do
      end
    end
  end
  describe '一覧表示機能' do
    context '一覧画面に遷移した場合' do
      it '作成済みのクライアント一覧が表示される' do
          # テストで使用するためのクライアントを作成
            client = FactoryBot.create(:client, name: 'sample')
            # クライアント一覧ページに遷移
            visit clients_path
            # visitした（遷移した）page（クライアント一覧ページ）に「sample」という文字列が
            # have_contentされているか。（含まれているか。）ということをexpectする（確認・期待する）
            # expect(page).to have_content 'sample'
            expect(page).to have_content 'sample'
            # expectの結果が true ならテスト成功、false なら失敗として結果が出力される
        end
      end
    end
  describe '詳細表示機能' do
     context '任意のタスク詳細画面に遷移した場合' do
       it '該当タスクの内容が表示される' do
       end
     end
  end
end