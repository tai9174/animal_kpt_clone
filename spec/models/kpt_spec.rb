require 'rails_helper'

RSpec.describe Kpt, type: :model do
  describe 'Kpt新規登録テスト' do
    context 'keep_contentとproblem_contentが規定の文字数でstart_timeも選択している' do
      it 'Kptが新規で作成される' do
        enough_info = FactoryBot.build(:kpt)
        expect(enough_info).to be_valid
      end
    end
    context 'keep_contentが空の場合' do
      it 'バリデーションエラー(keep_contentのNull制約)となり失敗する' do
        empty_keep_content = FactoryBot.build(:kpt, keep_content: nil)
        expect(empty_keep_content).not_to be_valid
      end
    end
    context 'problem_contentが空の場合' do
      it 'バリデーションエラー(problem_contentのNull制約)となり失敗する' do
        empty_problem_content = FactoryBot.build(:kpt, problem_content: nil)
        expect(empty_problem_content).not_to be_valid
      end
    end
    context 'keep_contentが140より多い場合' do
      it 'バリデーションエラー(keep_contentの文字数制限)となり失敗する' do
        too_much_keep_content = FactoryBot.build(:kpt, keep_content: "a"*141)
        expect(too_much_keep_content).not_to be_valid
      end
    end
    context 'problem_contentが140より多い場合' do
      it 'バリデーションエラー(problem_contentの文字数制限)となり失敗する' do
        too_much_problem_content = FactoryBot.build(:kpt, problem_content:"a"*141)
        expect(too_much_problem_content).not_to be_valid
      end
    end
    context 'start_timeが空の場合' do
      it 'バリデーションエラー(start_timeのNull制約)となり失敗する' do
        empty_start_time = FactoryBot.build(:kpt, start_time: nil)
        expect(empty_start_time).not_to be_valid
      end
    end
  end
end