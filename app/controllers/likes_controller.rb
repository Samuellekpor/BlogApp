class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @user = current_user
    add_like = Like.create(author: @user, post: @post)
    @post.save
    respond_to do |format|
      format.html do
        if add_like.save
          flash[:success] = 'Post created successfully'
        else
          flash.now[:error] = 'Error: Post could not be created'
          render :new, locals: { like: add_like }
        end
      end
      redirect_back(fallback_location: root_path)
    end
  end
end
