class CommentsController < ApplicationController
	before_action :authenticate_user!

	def show
		@comment = Comment.find(params[:id])
		@post = Post.find(params[:post_id])
	end

	def edit
		@post = Post.find(params[:post_id])
		@comment = Comment.find(params[:id])
	end


	def create
		@post = Post.find(params[:post_id])
		@comment = Comment.create(params[:comment].permit(:content))
		@comment.user_id = current_user.id
		@comment.post_id = @post.id
		if @comment.save
			respond_to do |format|
	      format.html {  redirect_to post_path(@post))}
	      format.js
	    end
	  else
	    respond_to do |format|
        format.js { render 'fail' }
      end
	  end
	end

	def update
			@post = Post.find(params[:post_id])
			@comment = Comment.find(params[:id])
		if @comment.update(comment_params)
			redirect_to @post
		else
			render :error
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy	
		redirect_to root_path
	end

private

	def comment_params
		params.require(:comment).permit(:content)
	end

end