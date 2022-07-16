class CommentsController < ApplicationController
  def show
  end





  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user_id = current_user.id if current_user
    @comment.save
    redirect_to post_path(@post)
  end

  def destroy
       @post = Post.find(params[:post_id])
       @comment = @post.comments.find(params[:id])
       @comment.destroy

       redirect_to post_path(@post)
   end

  private def comment_params
    params.require(:comment).permit(:username, :body)
  end
end
