class LanguagesController < ApplicationController
  def index
    @languages = Language.includes(:user).order('created_at DESC').limit(10)
    @language = Language.new
  end

  def new
    @language = Language.new
  end

  def create
    @language = Language.new(language_params)
    if@language.save
      redirect_to language_path(@language.id)
    else
      @language = Language.new
      render :new
    end
  end

  def show
    @language = Language.find(params[:id])
  end

  private
  def language_params
    params.require(:language).permit(:name_id, :tittle, :content, :day, :study_id).merge(user_id: current_user.id)
  end
end
