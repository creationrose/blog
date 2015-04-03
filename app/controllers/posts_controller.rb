class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	before_filter :authenticate_user!, except: [:index, :show]

	def index
	    @posts = Post.all
	    @comments = Comment.all
	  end

	def show
	end

	def new
		@post = current_user.posts.build
	end

	def create
		@post = current_user.posts.build(post_params)

		if @post.save
			flash[:notice] = "Post successfully added!"
			redirect_to @post
		else
			flash[:alert] = "No empty messages, try again."
			render 'new'
		end
	end

	def edit
	end

	def update
		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
		redirect_to root_path
	end

	private

	def find_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :body, :user_id)
	end
end
