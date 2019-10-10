class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(blog_params)
    redirect_to blogs_path
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit

  end

  private

  def blog_params
    params.require(:blog).permit(:image, :image_cache, :content)
  end
end
