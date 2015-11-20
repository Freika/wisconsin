class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end

  def go
    @post = Post.find(params[:id])
    @post.clicks += 1
    source = @post.source
    source.clicks += 1
    source.save

    redirect_to @post.url
  end

  private
    # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:title, :source_id)
    end
end
