require 'rails_helper'
RSpec.describe '介護記録機能', type: :system do
  before do
    @user = FactoryBot.create(:user)
    visit new_user_session_path
        fill_in 'user[email]', with: @user.email
        fill_in 'user[password]', with: @user.password
        click_button "Log in"
    # あらかじめケアレコード一覧のテストで使用するためのケアレコーどを作成する
    @client = FactoryBot.create(:client)
    care_record = FactoryBot.build(:care_record) 
    current_user.name = @user.name
    FactoryBot.create(:care_record, client_id: @client.id, user_id: @user.id) 
    FactoryBot.create(:second_care_record, client_id: @client.id, user_id: @user.id)
    visit clients_path
  end
  describe '新規作成機能' do
    context '介護記録を新規作成した場合' do
      it '作成した記録が表示される' do
        # 1. new_care_record_pathに遷移する（新規作成ページに遷移する）
      # ここにnew_care_record_pathにvisitする処理を書く
      # 2. 新規登録内容を入力する
      #「介護記録」というラベル名の入力欄と、「日付」というラベル名の入力欄にタスクのタイトルと内容をそれぞれ入力する
      # ここに「介護記録」というラベル名の入力欄に内容をfill_in（入力）する処理を書く
      # ここに「日付」というラベル名の入力欄に内容をfill_in（入力）する処理を書く
      # 3. 「登録する」というvalue（表記文字）のあるボタンをクリックする
      # ここに「登録する」というvalue（表記文字）のあるボタンをclick_onする（クリックする）する処理を書く
      # 4. clickで登録されたはずの情報が、記録詳細ページに表示されているかを確認する
      # （記録が登録されたら記録詳細画面に遷移されるという前提）
      # ここに記録詳細ページに、テストコードで作成したデータが記録詳細画面にhave_contentされているか（含まれているか）を確認（期待）するコードを書く
      end
    end
  end
  describe '一覧表示機能' do
    context '一覧画面に遷移した場合' do
      it '作成済みの介護記録一覧が表示される' do
        # テストで使用するためのタスクを作成
        care_record = FactoryBot.create(:care_record, client_id: @client.id, user_id: @user.id, content: 'sample')
        # タスク一覧ページに遷移
        visit care_records_path
        # visitした（遷移した）page（タスク一覧ページ）に「task」という文字列が
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