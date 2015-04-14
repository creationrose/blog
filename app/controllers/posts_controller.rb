class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD

	def index
		@posts = Post.all.order("created_at DESC")
	end
=======
	before_filter :authenticate_user!

	def index
	    @posts = Post.all
	    @comments = Comment.all
  	end
>>>>>>> 251ce9a

	def show
	end

	def new
<<<<<<< HEAD
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
=======
		@post = current_user.posts.build
	end

	def create
		@post = current_user.posts.build(post_params)
>>>>>>> 251ce9a

		if @post.save
			flash[:notice] = "Post successfully added!"
			redirect_to @post
		else
			flash[:alert] = "No empty messages, try again."
			render 'new'
		end
	end

	def edit
<<<<<<< HEAD
	end

	def update
=======
	  	authorize @post, :update?
	end

	def update
	  	authorize @post, :update?
>>>>>>> 251ce9a
		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
<<<<<<< HEAD
=======
		authorize @post, :update?
>>>>>>> 251ce9a
		@post.destroy
		redirect_to root_path
	end

	private

	def find_post
		@post = Post.find(params[:id])
	end

	def post_params
<<<<<<< HEAD
		params.require(:post).permit(:title, :body)
=======
		params.require(:post).permit(:title, :body, :user_id)
>>>>>>> 251ce9a
	end
end
