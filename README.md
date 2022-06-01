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


 <div class="container" id="home-container">
    <div class="jumbotron text-center text-white">
      <h1 class="display-4">Welcome to Alfalpha Blog</h1>
      <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
      <hr class="my-4">
      <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
      <a class="btn btn-success btn-lg" href="#" role="button">Sign up!</a>
    </div>
  </div>

  <% if params[:controller] == "articles" && params[:action] == "show" %>
  <nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light">
<% else %>
  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light mb-56">
<% end %>
