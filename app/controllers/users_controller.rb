class UsersController < ApplicationController
  def index
    @languages   = Language.includes(:user).order('created_at DESC').limit(10)
    @language    = Language.new
    @html        = Language.where(name_id: 1).order('created_at DESC').limit(5)
    @ruby        = Language.where(name_id: 2).order('created_at DESC').limit(5)
    @javascript  = Language.where(name_id: 3).order('created_at DESC').limit(5)
    @php         = Language.where(name_id: 4).order('created_at DESC').limit(5)
    @java        = Language.where(name_id: 5).order('created_at DESC').limit(5)
    @c           = Language.where(name_id: 6).order('created_at DESC').limit(5)
    @python      = Language.where(name_id: 7).order('created_at DESC').limit(5)
    @other       = Language.where(name_id: 8).order('created_at DESC').limit(5)
  end

  def show
    # @language    = Language.new
    @graphdays = current_user.languages.where(name_id: 1).count
    #   dayline = Array.new
    #   @graphdays.each do |graphday|
    #     dayline.push(graphday.study_id)
    # end
  end
end
