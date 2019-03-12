class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new # フォーム用の空のインスタンスを生成する
  end

  def create
    @article = Article.new(article_params) # ストロングパラメータを引数に
    @article.save
    redirect_to @article
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title,:body)
  end

end
