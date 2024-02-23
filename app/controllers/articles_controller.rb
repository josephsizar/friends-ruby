class ArticlesController < ApplicationController
  def index
    @articles = Article.order(created_at: :desc).all
  end

  def show
    @article = Article.find_by(id: params[:id])
    if  @article.nil?

      redirect_to root_path
    else
      @article
    end


  end
end
