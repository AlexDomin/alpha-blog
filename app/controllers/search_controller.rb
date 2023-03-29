class SearchController < ApplicationController

  # def index
  #   @query = Article.ransack(params[:q])
  #   @articles = @query.result(distinct: true)
  # end

  # def index
  #   if params[:q]
  #     @articles = Article.where('lower(description) LIKE ?', "%#{params[:q].downcase}%")
  #   else
  #     @articles = Article.all
  #   end
  # end

  def index
    if params[:q]
      if %w[title description user].include?(params[:sort])
        order_column = params[:sort]
      else
        order_column = 'title'
      end
  
      if %w[asc desc].include?(params[:direction])
        order_direction = params[:direction]
      else
        order_direction = 'asc'
      end
  
      @articles = Article.where('lower(description) LIKE ?', "%#{params[:q].downcase}%")
                         .order("#{order_column} #{order_direction}")
    else
      @articles = Article.all
    end
  end  

end