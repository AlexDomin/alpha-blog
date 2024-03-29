# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# alpha-blog



<% if params[:controller] == "articles" && params[:action] == "show" %>
  <nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light">
<% else %>
  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light mb-56">
<% end %>

carousel:

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="/assets/jumbo-photo-3.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block" id="welcome">
        <h1 class="display-4">Welcome to Alfalpha Blog</h1>
        <h5>Explore!</h5>
        <p>Find your freedom here</p>
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="/assets/jumbo-photo-2.jpg" alt="Second slide">
      <div class="carousel-caption d-none d-md-block">
        <h5>Think Globally</h5>
        <p>Join our world wide community</p>
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="/assets/jumbo-photo-5.jpg" alt="Thrid slide">
      <div class="carousel-caption d-none d-md-block">
        <h4 class="display-4">Sign up Today!</h4>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

pulled from user show page when logged in:

<% if logged_in? && @user == current_user %>
  <div class = "text-center mt-4">
    <%= link_to "Edit your profile", edit_user_path, class: "btn btn-info button-margin" %>
  </div>
<% end %>

article.categories iteration from articles show view:

<% if @article.categories %>
  <% @article.categories.each do |category| %>
    <%= link_to category.name, category_path(category) %>
  <% end %>
<% end %>

particles:

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous">
</script>


<div id="particle"></div>

<div class="container"> 
<div class="jumbotron" id="jumbo">
  <div class="inner">
        <h1 class="whitney">A Title Here</h1>
        <h3 class="gotham">A Sub Title Here</h3>
        <p>Using bootstrap's jumbotron with the particle.js background to make the jumbotron semi-transparent.</p>
        <p><a class="btn btn-primary btn-lg" role="button">Learn more &raquo;</a></p>
  </div>
    </div>
</div>
<%= javascript_pack_tag 'particles' %>

<script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>

lunar month landing page:

<div class="container" id="home-container">
  <div class="jumbotron text-center text-white">
    <h1 class="display-4" id="text-shadow-jumbo">Welcome to Alfalpha Blog</h1>
    <p class="lead" id="text-shadow-jumbo-lead">July is Lunar Month!  <%= link_to "Click here", "https://youtu.be/1Mqsd0ru_pc" %> to learn why Alfalpha Blog celebrates NASA achievements.</p>
    <hr class="my-4">
    <p></p>
    <%= link_to 'Sign up!', signup_path, class: "btn btn-light btn-lg" %>
  </div>
</div>

new (particle) home page:

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<div id="particle"></div>

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner float-top">
    <div class="carousel-item active">
      <div class="container"> 
        <div class="jumbotron" id="jumbo">
          <div class="inner">
                <h1 class="whitney">Welcome to Alfalpha-Blog!</h1>
                <h2 class="gotham">A place for friends to share ideas</h2>
                <h3 class="gotham">Check out our articles below, or login if you already have an account</h3>
                <hr>
                <%= link_to "View Articles", articles_path, class: "btn btn-light btn-lg" %>
                <%= link_to "Login", login_path, class: "btn btn-light btn-lg" %>
          </div>
        </div>
      </div>
    </div>
    <div class="carousel-item">
      <div class="container"> 
        <div class="jumbotron" id="jumbo">
          <div class="inner">
                <h2 class="gotham">Alfalpha-Blog was founded on freedom of expression</h2>
                <h3 class="gotham">Explore our unique bloggers and their posts below</h3>
                <hr>
                <%= link_to "View Our Bloggers", users_path, class: "btn btn-light btn-lg" %>
          </div>
        </div>
      </div>
    </div>
    <div class="carousel-item">
      <div class="container"> 
        <div class="jumbotron" id="jumbo">
          <div class="inner">
                <h2 class="gotham">There's something for everyone here</h2>
                <h3 class="gotham">Our community discusses a wide range of topics</h3>
                <hr>
                <%= link_to "View Article Categories", categories_path, class: "btn btn-light btn-lg" %>
          </div>
        </div>
      </div>
    </div>
    <div class="carousel-item">
      <div class="container"> 
        <div class="jumbotron" id="jumbo">
          <div class="inner">
                <h2 class="gotham">Sign up to join the discussion today!</h2>
                <hr>
                <%= link_to "Sign up", signup_path, class: "btn btn-light btn-lg" %>
          </div>
        </div>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script><!-- Latest compiled and minified CSS -->

<%= javascript_pack_tag 'particles' %>


Summer is lunar season home page:

<div class="container" id="home-container">
  <div class="jumbotron text-center text-white">
    <h1 class="display-4" id="text-shadow-jumbo">Welcome to Alfalpha Blog</h1>
    <p class="lead" id="text-shadow-jumbo-lead">Summer is Lunar Season!  <%= link_to "Click here", "https://youtu.be/1Mqsd0ru_pc" %> to learn why Alfalpha Blog celebrates NASA achievements.</p>
    <hr class="my-4">
    <p></p>
    <%= link_to 'Sign up!', signup_path, class: "btn btn-light btn-lg" %>
  </div>
</div>

Search form experiment with no gem:

<%= search_form_for(@query, url: search_path, method: :get, `class:'d-flex'`) do |f| %>

  <!-- <%= f.search_field :title_or_description_or_user_email_or_user_username_or_categories_name_i_cont_any, 
  placeholder: "Search...",
  class: "form-control me-2" %> -->

  <%= f.search_field :q, params[:q], placeholder: "Search..." %>
  <%= f.submit "Search", class: "btn btn-outline-secondary ml-2" %>
<% end %>