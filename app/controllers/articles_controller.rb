class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def create
    @article = Article.new(params[:article].permit(:title, :text))

    ## Returns a bool indicating if article was saved or not
    @article.save 
    redirect_to @article
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end
end
