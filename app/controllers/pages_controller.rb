class PagesController < ApplicationController

  def index 
    @user = User.first
    @posts = Post.all.desc(:created_at)
  end

  def new_comment
    post = Post.find_by(id:params[:post])
    if post
      post.comments << params[:content]
      post.save!
    end
    redirect_to '/'
  end

  def new_post
    content = params[:content]
    @post = Post.create(content:content)
    @post.comments = []
    if @post.save!
        respond_to do |format|
          format.html { redirect_to '/' }
          format.js
        end
    else
      render json: {error: "shit"}
    end
  end

end