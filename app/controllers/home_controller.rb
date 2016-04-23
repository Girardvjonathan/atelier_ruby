class HomeController < ApplicationController
  def index
    @posts = Post.published.limit(20)
    @comment = Comment.all
  end
end