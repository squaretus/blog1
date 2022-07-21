# Контроллер модели комментариев

class CommentsController < ApplicationController
  load_resource :post
  load_resource :comment, through: :post
  
  def show; end

  def create
    @comment = @post.comments.new(comment_params)
    @comment.user_id = current_user&.id
    
    if @comment.save
      redirect_to post_path(@post)
    else
      render 'posts/show'
    end
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy

    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:username, :body)
  end
end
