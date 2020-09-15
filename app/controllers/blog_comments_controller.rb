class BlogCommentsController < ApplicationController
  before_action :authenticate_user!

  def create
  	@blog = Blog.find(params[:blog_id])
    @blog_comments = @blog.blog_comments.reverse_order
  	@blog_comment = current_user.blog_comments.new(blog_comment_params)
  	@blog_comment.blog_id = @blog.id
  	@blog_comment.save
  end

  def destroy
    @blog = Blog.find(params[:blog_id])
  	@blog_comment = BlogComment.find_by(id: params[:id], blog_id: params[:blog_id])
  	@blog_comment.destroy
  end

  private
  def blog_comment_params
  	params.require(:blog_comment).permit(:comment)
  end
end
