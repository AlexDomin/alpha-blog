class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:show, :index]
  before_action :require_current_user, only: [:edit, :update, :destroy]

  def show
  end

  # def index
  #   @articles = Article.order('updated_at DESC').paginate(page: params[:page], per_page: 5)
  # end

  # def index
  #   if params[:q].present?
  #     @articles = Article.where("title LIKE ? OR description LIKE ?", "#{params[:q]}", "#{params[:q]}").order(sort_column + " " + sort_direction).paginate(page: params[:page], per_page: 5)
  #   else
  #     @articles = Article.order('updated_at DESC').paginate(page: params[:page], per_page: 5)
  #   end
  # end

  def index
    @articles = Article.order('updated_at DESC').paginate(page: params[:page], per_page: 5)
  end
  

  # def index
  #   @query = params[:q]
  #   if @query
  #     @articles = Article.where("title ILIKE ? OR description ILIKE ?", "%#{@query}%", "%#{@query}%")
  #                        .joins(:user, :categories)
  #                        .select("articles.*, users.username, categories.name as category_name")
  #                        .order("#{params[:sort]} #{params[:direction]}")
  #   else
  #     @articles = Article.all
  #   end
  # end  

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
    @user_redirect = Article.find(params[:id]).user
    if @article.destroy
      flash[:notice] = "#{@article.title} was successfully deleted!"
      redirect_to user_path(@user_redirect)
    end
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
  
  def article_params
    params.require(:article).permit(:title, :description, category_ids: [])
  end

  def require_current_user
    if current_user != @article.user && !current_user.admin?
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to @article
    end
  end

end