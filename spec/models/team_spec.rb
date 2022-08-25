require 'rails_helper'

RSpec.describe Team, type: :model do
  describe 'チーム新規登録テスト' do
    context 'team_nameが空ではない' do
      it 'チームが新規で作成される' do
        enough_info = FactoryBot.build(:team)
        expect(enough_info).to be_valid
      end
    end
    context 'チームの名前が空の場合' do
      it 'バリデーションエラー(team_nameのNull制約)となり失敗する' do
        empty_team_name = FactoryBot.build(:team, team_name: nil)
        expect(empty_team_name).not_to be_valid
      end
    end
  end
end