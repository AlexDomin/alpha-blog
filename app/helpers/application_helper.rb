module ApplicationHelper

  def gravatar_for(user, options = {size: 80})
    email_address = user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    size = options[:size]
    gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "rounded shadow mx-auto d-block")
  end

  # def sort_link(column, title = nil)
  #   title ||= column.titleize
  #   direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
  #   link_to(title, params.permit(:search, :sort, :direction).merge(sort: column, direction: direction))
  # end

  def sort_link(column, title = nil)
    title ||= column.titleize
    direction = column == params[:sort] && params[:direction] == "asc" ? "desc" : "asc"
    link_to(title, request.query_parameters.merge(sort: column, direction: direction))
  end  

  def sort_column
    %w[title description username].include?(params[:sort]) ? params[:sort] : "title"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
