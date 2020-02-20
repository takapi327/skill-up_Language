require 'rails_helper'

RSpec.describe LanguagesController, type: :controller do

  describe LanguagesController do
    
    let(:user) { create(:user) }
    let(:language) {{user_id: user.id, language: attributes_for(:language), image: attributes_for(:image)}}

    # 1. indexアクションのテスト
    describe "GET index" do

      before do
        user = FactoryBot.create(:user)
        login user
      end

      it 'populates an array of languages ordered by created_at DESC' do
        languages = create_list(:language, 3) 
        get :index
        expect(assigns(:languages)).to match(languages.sort{ |a, b| b.created_at <=> a.created_at } )
      end

      it "renders the :index template" do
        get :index
        expect(response).to render_template :index
      end
      
    end

    # 2. newアクションがログインしていないと行えないかのテスト
    describe 'GET #new' do

      context 'log in' do

        before do
          login user
        end

        # newアクションを行なった時に正しくページに推移するかのテスト
        context 'can new action' do
          it 'renders the :new template'do
            get :new
            expect(response).to render_template :new
          end
        end

      end
    end

    # 3. createアクションがログインしていないと行えないかのテスト
    describe 'POST #create' do

      context 'log in' do
        before do
          login user
        end

        # 保存ができた場合の処理
        context 'can create language' do
          it 'count up language' do
            expect{post :create, params: language}.to change(Language, :count).by(1)
          end
          subject{get :index}
          it{ expect(subject).to render_template :index }
        end

        # 保存できなかった場合の処理
        context 'can not create language' do
          let(:invalid_language){{user_id: user, language: attributes_for(:language, tittle: nil, name_id: nil, content: nil, study_id: nil, day: nil, image: nil)}}
          it 'count not up language' do
            expect{post :create, params: invalid_language}.to change(Language, :count).by(0)
          end
          subject{get :new}
          it{ expect(subject).to render_template :new }
        end

      end
    end

    # 4. showアクションのテスト
    describe "GET #show" do

    # showアクションが動いた場合の処理
      context 'show language' do

        it "assigns the requested language to @language" do
          language = create(:language)
          get :show, params: { id: language }
          expect(assigns(:language)).to eq language
        end

        it "renders the :show template" do
          language = create(:language)
          get :show, params: { id: language }
          expect(response).to render_template :show
        end

      end
    end

    # 5. searchアクションのテスト
    describe 'GET #search' do

      it 'can search' do
        expect{get :search, params: language}
      end

      it 'renders search' do
        get :search
        expect(response).to render_template :search
      end
    end

  end
end