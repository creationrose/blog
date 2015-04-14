class HomeController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
    @post = Post.new
  end
end
