class PostsController < ApplicationController
  def index
    @posts = Post.includes(user: :address)
  end
end
