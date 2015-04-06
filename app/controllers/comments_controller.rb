class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new(comment_params)
		@comment.save

		if @comment.save
			redirect_to post_path(@post)
		else
			render :js => "Sorry, no blank comments please"
		end
	end

	def edit
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
	end

	def update

		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		require_user(@comment)
		if @comment.update(comment_params)
			redirect_to post_path(@post)
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end


	private

	def comment_params
	params.require(:comment).permit(:comment, :user_id, :post_id)
  end
end
