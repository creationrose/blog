class CommentsController < ApplicationController
	def create

		if !user_signed_in?
		user_not_authorized
	  end

		if user_signed_in?
			@post = Post.find(params[:post_id])
			@comment = @post.comments.new(comment_params)
			@comment.user = current_user
			@comment.save

			if @comment.save
				redirect_to post_path(@post)
			else
				render :js => "Sorry, no blank comments please"
			end
		end
	end

	def edit
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		unless comment_owner?(@comment)
			user_not_authorized
		end
	end

	def update

		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		if user_signed_in? && current_user == @comment.user
			if @comment.update(comment_params)
				redirect_to post_path(@post)
			else
				render 'edit'
			end
		else
			user_not_authorized
		end
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		if comment_owner?(@comment)
			@comment.destroy
			redirect_to post_path(@post)
		else
			user_not_authorized
		end

	end


	private

	def comment_owner?(comment)
		user_signed_in? && current_user == comment.user
	end

	def comment_params
	params.require(:comment).permit(:comment, :user_id, :post_id)
  end
end