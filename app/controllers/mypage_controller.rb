class MypageController < ApplicationController
  def show
    @articles = current_user.articles
    @articles = Article.page(params[:page]).per(25)
  end

end
