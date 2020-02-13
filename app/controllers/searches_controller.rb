class SearchesController < ApplicationController

  def index
    @language = Language.search(params[:tittle])
  end
end
