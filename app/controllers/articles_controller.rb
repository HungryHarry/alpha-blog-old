class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :show, :destroy, :update]
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was saved successfully"
      redirect_to article_path(@article)
    else
      render 'new'
      #redirect_to about_path
    end
  end

  def show

  end

  def edit

  end

  def destroy
    @article.destroy
    flash[:notice] = "Article was deleted successfully"
    redirect_to articles_path
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Article has been updated successfully"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  private

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :description)
    end
end
