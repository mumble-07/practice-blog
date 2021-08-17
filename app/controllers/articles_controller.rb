class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show

  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    # @article.name = params[:name] <--- mawawala na since naka declare na sa article_params
    # @article.body = params[:body] ,,-- dapat name and vody nasa form
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end

  def edit

  end

  def update
  
  end

  def delete
  
  end

  private
    def article_params
      params.require(:article).permit(:name, :body)
    end
end
