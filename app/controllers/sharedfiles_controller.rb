class SharedfilesController < ApplicationController
  before_action :change_re_direction, only: :new_shared

  def index
    @sharedfile = Sharedfile.all
    # @sharedfile = Sharedfile.where("created_at > ?" , Time.now.beginning_of_day)
    # @all_sharedfiles = Sharedfile.where("user_id = ?", params[:user_id])
  end 

  def new_shared
    binding.pry
    @post = Post.find(params[:id])
    @new_shared = @post.sharedfiles.create(user_id:@post.user_id)
    redirect_to sharedfiles_path
  end

  def show 

  end

  def change_re_direction
    if params[:post_id].nil?
      redirect_to checkin_path(params[:id]) and return
    end
  end

  private
  def shared_params
    params.require(:sharedfile_params).permit(:user_id, :post_id)
  end
end