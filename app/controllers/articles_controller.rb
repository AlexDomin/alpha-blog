class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @articles = Article.paginate(page: params[:page], per_page: 5)
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      flash[:notice] = "#{@article.title} was saved successfully!"
      redirect_to @article
    else
      render 'new'
    end

    # render plain: params[:article]
    # redirect_to article_path(@article)
    # redirect_to '/articles/new'
    # using the above code redirects back to the exact same
    # form after an article has been successfully submitted
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "#{@article.title} was updated successfully!"
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    if @article.destroy
      flash[:notice] = "#{@article.title} was successfully deleted!"
      redirect_to articles_path
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