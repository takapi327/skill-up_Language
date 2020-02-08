class LanguageController < ApplicationController
  def index
  end

  def new
    @language = Language.new
    # @language.images.new
  end

  def create
    # @language = Language.new(language_params)
    # redirect_to root_path
  end

  private
  def language_params
    params.require(:language).permit(:name, :content, :day, :time, images_attributes: [:image, :_destroy, :id]).merge(user_id: current_user.id)
  end
end
