class PagesController < ApplicationController

  def index 
    @users = User.all
    @posts = Post.all.desc(:created_at)
  end

  def new_post
    content = params[:content]
    @post = Post.create(content:content)
    if @post.save!
        respond_to do |format|
          format.html { redirect_to '/test' }
          format.js
        end
    else
      render json: {fuck: "fuck"}
    end
  end

end