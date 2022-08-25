require 'rails_helper'
RSpec.describe 'KPT管理機能', type: :system do
  let!(:user) { FactoryBot.create(:user) }
  let!(:admin_user) { FactoryBot.create(:admin_user) }
  let!(:second_user ) { FactoryBot.create(:second_user) }
  before do
    visit new_user_session_path
    fill_in "user[name]", with:"test_name"
    fill_in "user[password]", with:"test_password"
    click_on "ログイン"
  end

  describe '新規チーム作成機能' do
    context 'チームを新規作成した場合' do
      it '作成者に自分の名前表示される' do        
        visit new_team_path
        fill_in "team[team_name]", with:"team_name"
        click_on "登録する"   
        expect(page).to have_content 'test_name'
      end
    end
    context 'チームを新規作成した場合' do
      it '作成したチームが一覧に表示される' do
        visit new_team_path
        fill_in "team[team_name]", with:"team_name"
        click_on "登録する"   
        click_on "戻る"
        expect(page).to have_content 'team_name'
      end
    end
  end
  describe 'チーム参加機能' do
    context 'チームの詳細画面からチームに加わった場合' do
      it '参加メンバーに自分の名前が表示される' do
        team= FactoryBot.create(:team,user: user)
        click_on "ログアウト"
        visit new_user_session_path
        fill_in "user[name]", with:"test_name2"
        fill_in "user[password]", with:"test_password2"
        click_on "ログイン"
        visit team_path(team.id)
        click_on "チームに加わる"
        click_on "チームメンバー"
        expect(page).to have_content 'test_name2'
      end
    end
    context 'チームの詳細画面からチームに外れた場合' do
      it 'チームから外れましたの表示がされる' do
        team= FactoryBot.create(:team,user: user)
        visit teams_path
        visit team_path(team.id)
        click_on "チームに加わる"
        visit team_path(team.id)
        click_on "チームから外れる"
        expect(page).to have_content 'team_nameのチームから外れました'
      end
    end
  end
  describe 'チーム編集・削除機能' do
    context 'チームの作成者はチームを編集しようとする場合' do
      it '編集した内容が反映される' do
        team= FactoryBot.create(:team,user: user)
        visit edit_team_path(team.id)
        fill_in "team[team_name]", with:"team_name2"     
        click_on "更新する"   
        click_on "戻る"
        expect(page).to have_content 'team_name2'
      end
    end
    context 'チームの作成者はチームを削除しようとする場合' do
      it '削除したチームが消される' do
        team= FactoryBot.create(:team,user: user)
        visit teams_path
        click_on "削除"
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'チームは削除されました。'
      end
    end
    context '一般ユーザーがチームを編集しようとする場合' do
      it '作成者以外はチームを編集することができませんと表示される' do
        team= FactoryBot.create(:team,user: user)
        click_on "ログアウト"
        visit new_user_session_path
        fill_in "user[name]", with:"test_name2"
        fill_in "user[password]", with:"test_password2"
        click_on "ログイン"
        visit edit_team_path(team.id)
        expect(page).to have_content '作成者以外はチームを編集することができません'
      end
    end
  end
  describe 'チームKPT機能' do
    context 'チームの名をクリックした場合' do
      it '今日のチームメンバーのkptが見れる' do
        kpt1=FactoryBot.create(:kpt, user: user)
        kpt2=FactoryBot.create(:second_kpt, user: user)
        visit kpts_path
        team= FactoryBot.create(:team,user: user)
        visit teams_path
        visit team_path(team.id)
        click_on "チームに加わる"        
        click_on "ログアウト"
        visit new_user_session_path
        fill_in "user[name]", with:"test_name2"
        fill_in "user[password]", with:"test_password2"
        click_on "ログイン"
        kpt4=FactoryBot.create(:fourth_kpt, user: second_user)
        kpt5=FactoryBot.create(:fifth_kpt, user: second_user)
        visit kpts_path
        visit team_path(team.id)
        click_on "チームに加わる"
        click_on "team_name"
        team_kpts_list = all('.team_kpts_row')
        expect(team_kpts_list[0]).to have_content 'test_keep'
        expect(team_kpts_list[1]).to have_content 'test_keep4'
      end
    end
    context '一週間チームから昨日のkptを選択した場合' do
      it '昨日のチームメンバーのkptが見れる' do
        kpt1=FactoryBot.create(:kpt, user: user)
        kpt2=FactoryBot.create(:second_kpt, user: user)
        visit kpts_path
        team= FactoryBot.create(:team,user: user)
        visit teams_path
        visit team_path(team.id)
        click_on "チームに加わる"        
        click_on "ログアウト"
        visit new_user_session_path
        fill_in "user[name]", with:"test_name2"
        fill_in "user[password]", with:"test_password2"
        click_on "ログイン"
        kpt4=FactoryBot.create(:fourth_kpt, user: second_user)
        kpt5=FactoryBot.create(:fifth_kpt, user: second_user)
        visit kpts_path
        visit team_path(team.id)
        click_on "チームに加わる"
        click_on "team_name"
        visit team_kpts_1_path(team.id)
        team_kpts1_list = all('.team_kpts1_row')
        expect(team_kpts1_list[0]).to have_content 'test_keep2'
        expect(team_kpts1_list[1]).to have_content 'test_keep5'
      end
    end
  end
end
