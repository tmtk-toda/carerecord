require 'rails_helper'
RSpec.describe 'ユーザ登録・ログイン・ログアウト機能', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @admin_user = FactoryBot.create(:admin_user)
  end

  describe 'ユーザ登録のテスト' do
    context 'ユーザのデータがなくログインしていない場合' do
      it 'ユーザ新規登録のテスト' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'bbbbbb'
        fill_in 'user[email]', with: 'bbb@bbb.bbb'
        fill_in 'user[password]', with: 'bbbbbb'
        fill_in 'user[password_confirmation]', with: 'bbbbbb'
        click_on '登録する'
        expect(page).to have_content 'bbbbbb'
      end
    end 
  end

  describe 'セッション機能のテスト' do
    context 'ログインができること' do
      it '自分の詳細画面(マイページ)に飛べること' do
        visit new_user_session_path
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        click_button 'log in'
        expect(page).to have_content 'sample@example.com'
      end
    end 
  
    context '投稿ページにいけないこと' do
      it 'ログインしていない時はログイン画面に飛ぶテスト' do
        visit posts_path
        expect(current_path).to eq new_user_session_path
      end
    end 

    context 'ログアウトができること' do
      it 'ログアウトしてトップページへ戻る' do
        visit new_user_session_path
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        click_button 'ログインする'
        click_on 'マイページ'
        click_on 'ログアウト'
        #visit top_index_path
        #click_on 'ログアウト'
        #find("button.navbar-toggler").click
        #find(".dropdown-toggle.user").click
        #click_link 'ログアウト'
        expect(current_path).to eq top_index_path
        #expect(page).to have_content 'sample@example.com'
      end
    end 
  end  

  describe 'ユーザー編集画面テスト' do
    context 'ユーザー情報を編集する' do
      it 'ユーザー情報が変わっている' do
        visit new_user_session_path
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        click_button 'ログインする'
        click_link 'プロフィールを編集'
        fill_in 'user[name]', with: 'aaaaaa'
        fill_in 'user[email]', with: 'aaa@aaa.aaa'
        fill_in 'user[self_introduction]', with: 'よろしく'
        fill_in 'user[current_password]', with: '00000000'
        click_on "更新"
        expect(page).to have_content 'aaa@aaa.aaa'
        expect(page).to have_content 'aaaaaa'
        expect(page).to have_content 'よろしく'
      end
    end 
  end

  describe '管理画面のテスト' do
    context '管理者は管理画面にアクセスできること' do
      it '管理画面へとぶ' do
        visit new_user_session_path
        fill_in 'user[email]', with: 'admin@example.com'
        fill_in 'user[password]', with: '11111111'
        click_button 'ログインする'
        visit rails_admin_path
        expect(current_path).to eq rails_admin_path
      end
    end    
  end

end