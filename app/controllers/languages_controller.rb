class LanguagesController < ApplicationController
  def index
    @languages = Language.includes(:user).order('created_at DESC').limit(10)
    @language = Language.new
    @html = Language.where(name_id: 1).order('created_at DESC')
    @ruby = Language.where(name_id: 2).order('created_at DESC')
    @javascript = Language.where(name_id: 3).order('created_at DESC')
    @php = Language.where(name_id: 4).order('created_at DESC')
    @java = Language.where(name_id: 5).order('created_at DESC')
    @c = Language.where(name_id: 6).order('created_at DESC')
    @python = Language.where(name_id: 7).order('created_at DESC')
    @other = Language.where(name_id: 8).order('created_at DESC')
  end

  def new
    @language = Language.new
    @language.images.new
  end

  def create
    @language = Language.new(language_params)
    if@language.images.present? && @language.save
      redirect_to language_path(@language.id)
    else
      @language = Language.new
      render :new
    end
  end

  def show
    @language = Language.find(params[:id])
    @images = Image.where(language_id: @language.id)
  end

  def search
    @language = Language.search(params[:keyword])
    @search = params[:keyword]
    respond_to do |format|
      format.html
      format.json
    end
  end

  private
  def language_params
    params.require(:language).permit(:name_id, :tittle, :content, :day, :study_id, images_attributes: [:image, :_destroy, :id]).merge(user_id: current_user.id)
  end
end
