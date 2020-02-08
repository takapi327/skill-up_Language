class LanguagesController < ApplicationController
  def index
    @language = Language.new
  end

  def new
    # binding.pry
    @language = Language.new
    @language.images.new
    # @language.user = current_user
  end

  def create
    # binding.pry
    @language = Language.new(language_params)
    if @language.images.present? && @language.save
      # redirect_to root_path
      redirect_to languages_path
    else
      redirect_to new_language_path
    end
  end

  private
  def language_params
    params.require(:language).permit(:name_id, :tittle, :content, :day, :study_id, images_attributes: [:image]).merge(user_id: current_user.id)
  end
end
