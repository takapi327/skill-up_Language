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
      # 2. user_idが空では登録できないこと
      it "is invalid without a user_id" do
        language = build(:language, user_id: nil)
        language.valid?
        expect(language.errors[:user_id]).to include("を入力してください")
      end

      # 3. tittleが空では登録できないこと
      it "is invalid without a tittle" do
        language = build(:language, tittle: nil)
        language.valid?
        expect(language.errors[:tittle]).to include("を入力してください")
      end

      # 3. name_idが空では登録できないこと
      it "is invalid without a name_id" do
        language = build(:language, name_id: nil)
        language.valid?
        expect(language.errors[:name_id]).to include("を入力してください")
      end

      # 4. dayが空では登録できないこと
      it "is invalid without a day" do
        language = build(:language, day: nil)
        language.valid?
        expect(language.errors[:day]).to include("を入力してください")
      end

      # 5. study_idが空では登録できないこと
      it "is invalid without a study_id" do
        language = build(:language, study_id: nil)
        language.valid?
        expect(language.errors[:study_id]).to include("を入力してください")
      end

      # 6. contentが空では登録できないこと
      it "is invalid without a content" do
        language = build(:language, content: nil)
        language.valid?
        expect(language.errors[:content]).to include("を入力してください")
      end

    end
  end
end