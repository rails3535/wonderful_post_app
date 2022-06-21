class MypageController < ApplicationController
  def show
    @articles = current_user.articles
    @articles = Article.page(params[:page]).per(25)
    @articles = @articles.where('title LIKE ?', "%#{params[:title]}%") if params[:title].present?
  end
end
