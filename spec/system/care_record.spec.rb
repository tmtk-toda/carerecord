require 'rails_helper'
RSpec.describe '介護記録機能', type: :system do
  before do
    # あらかじめタスク一覧のテストで使用するためのタスクを二つ作成する
    FactoryBot.create(:care_record)
    FactoryBot.create(:second_care_record)
  end
  describe '新規作成機能' do
    context '介護記録を新規作成した場合' do
      it '作成した記録が表示される' do
      end
    end
  end
  describe '一覧表示機能' do
    context '一覧画面に遷移した場合' do
      it '作成済みの介護記録一覧が表示される' do
        # テストで使用するためのタスクを作成
        care_record = FactoryBot.create(:care_record, content: 'sample')
        # タスク一覧ページに遷移
        visit care_records_path
        # visitした（遷移した）page（タスク一覧ページ）に「テスト記録」という文字列が
        # have_contentされているか（含まれているか）ということをexpectする（確認・期待する）
        expect(page).to have_content 'sample'
        # expectの結果が true ならテスト成功、false なら失敗として結果が出力される
      end
    end
  end
  describe '詳細表示機能' do
     context '任意の介護記録詳細画面に遷移した場合' do
       it '該当記録の内容が表示される' do
       end
     end
  end
end