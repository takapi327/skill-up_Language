require 'rails_helper'

describe Language do
  describe '#create' do
    # 保存ができる場合
    context 'can save' do
      # 1. user_idとtittle、name_id、day、study_id、contentが存在すれば登録できること
      it "is valid with a user_id、tittle、name_id、day、study_id、content" do
        language = build(:language)
        expect(language).to be_valid
      end
    end
    
    # 保存ができない場合
    context 'can not save' do
    end
  end
end