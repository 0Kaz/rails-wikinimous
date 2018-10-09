class ArticlesController < ApplicationController
  before_action :article_set_id, only: [:show]
  before_action :article_params, only: [:create]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to root_path

  end


  private

  def article_set_id
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
