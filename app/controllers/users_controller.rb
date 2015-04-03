class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @comments = @user.comments
  end
end
