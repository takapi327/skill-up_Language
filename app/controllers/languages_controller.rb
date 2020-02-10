class LanguagesController < ApplicationController
  def index
    @languages = Language.includes(:user).order('created_at DESC').limit(10)
    @language = Language.new
  end

  def new
    @language = Language.new
    @language.images.new
  end

  def create
    @language = Language.new(language_params)
    if @language.images.present? && @language.save
      redirect_to language_path(@language.id)
    else
      @language = Language.new
      @language.images.new
      flash.now[:alert] = '画像を入力してください。'
      render :new
    end
  end

  def show
    @language = Language.find(params[:id])
    @images = Image.where(language_id: @language.id)
  end

  private
  def language_params
    params.require(:language).permit(:name_id, :tittle, :content, :day, :study_id, images_attributes: [:image]).merge(user_id: current_user.id)
  end
end
