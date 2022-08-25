require 'rails_helper'
RSpec.describe 'KPT管理機能', type: :system do
  let!(:user) { FactoryBot.create(:user) }
  let!(:admin_user) { FactoryBot.create(:admin_user) }
  
  before do
    visit new_user_session_path
    fill_in "user[name]", with:"test_name"
    fill_in "user[password]", with:"test_password"
    click_on "ログイン"
  end

  describe '新規KPT作成機能' do
    context 'KPTを新規作成した場合' do
      it '作成したKPTが表示される' do        
        visit new_kpt_path
        fill_in "kpt[date]", with:Date.today
        fill_in "kpt[keep_content]", with:"keep_content"
        select "●達成●", from:"kpt[keep_status]"
        fill_in "kpt[problem_content]", with:"problem_content"
        select "○問題○", from:"kpt[problem_status]"
        fill_in "kpt[try_content]", with:"try_content"
        select "◎少し達成◎", from:"kpt[try_status]"      
        click_on "登録する"   
        click_on "戻る"
        expect(page).to have_content 'keep_content'
      end
    end
  end
  describe '詳細表示機能' do
    context '任意のタスク詳細画面に遷移した場合' do
      it '該当タスクの内容が表示される' do
        kpt= FactoryBot.create(:kpt, keep_content:"keep_content", user: user)
        visit kpt_path(kpt.id)
        expect(page).to have_content 'keep_content'
      end
    end
  end
  describe '一覧表示機能' do
    context '一覧画面に遷移した場合' do
      it '作成済みのKPT一覧が表示される' do
        FactoryBot.create(:kpt, keep_content:"keep_content", user: user)
        visit kpts_path
        expect(page).to have_content 'keep_content'
      end
    end
    context 'KPTが日時の降順に並んでいる場合' do
      it '新しいKPTが一番上に表示される' do
        FactoryBot.create(:kpt, keep_content:"keep_content", date: Date.today, user: user)
        FactoryBot.create(:kpt, keep_content:"keep_content2", date:Date.today+1, user: user)
        visit kpts_path
        kpt_list = all('.kpt_row')
        expect(kpt_list[0]).to have_content 'keep_content2'
        expect(kpt_list[1]).to have_content 'keep_content'
      end
    end 
    context 'KPTを編集した場合' do
      it '編集した内容が反映される' do
        kpt= FactoryBot.create(:kpt, keep_content:"keep_content", user: user)
        visit edit_kpt_path(kpt.id)
        fill_in "kpt[keep_content]", with:"keep_content2"     
        click_on "更新する"   
        click_on "戻る"
        expect(page).to have_content 'keep_content2'
      end
    end
    context 'KPTを削除した場合' do
      it '削除した内容が消される' do
        FactoryBot.create(:kpt, keep_content:"keep_content", user: user)
        visit kpts_path
        click_on "削除"
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Kptは削除されました!'
      end
    end
    context 'KPTをお気に入りした場合' do
      it 'お気に入り一覧に表示される' do
        kpt= FactoryBot.create(:kpt, keep_content:"favorite_content",favorite: true, user: user)
        visit kpts_path
        visit favorits_index_path
        expect(page).to have_content 'favorite_content'
      end
    end
  end
end
