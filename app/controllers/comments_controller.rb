class CommentsController < ApplicationController
  def new
    @commnet = Comment.new
  end

  def create
    @order = Comment.new(comment_params)
    @order.save
    redirect_to root_path
  end

  private
    def comment_params
      params.require(:comment).permit(:item_id, :text)
    end
end
