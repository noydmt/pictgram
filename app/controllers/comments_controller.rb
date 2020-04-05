class CommentsController < ApplicationController

  def index
    @comments = Comment.find_by(user_id: current_user.id)
  end

  def create
    comment = Comment.new(params_comments)
    if comment.save
      redirect_to topics_path, success: 'コメントの投稿に成功しました'
    else
      flash.now[:danger] = 'コメントの投稿に失敗しました'
      redirect_to topics_path
    end
   end

  def destroy
    
  end
  
  private
  def params_comments
    params.require(:comment).permit(:topic_id, :content, :user_id)
  end

end
