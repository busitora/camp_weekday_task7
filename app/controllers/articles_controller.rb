class ArticlesController < ApplicationController
  def index
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new # フォーム用の空のインスタンスを生成する
  end

  def create
    @article = Article.new(post_params) # ストロングパラメータを引数に
    @article.save
    redirect_to @article
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def article_params
    params.require(:article).permit(:title,:body)
  end

end
