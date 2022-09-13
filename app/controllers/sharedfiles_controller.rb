class SharedfilesController < ApplicationController

  def index
    @sharedfile = Sharedfile.all
  end 

  
  def new
    @sharedfile = Sharedfile.find(params[:sharedfile])
    @new = @user.sharedfile.create(post_id:@user.post_id)
  end
  
  def new_shared
    @user = User.find(params[:user_id])
    @new_shared = @user.sharedfile.create(user_id:@post.user_id)
    # redirect_to checkins_path
  end

  private
  def post_params
    params.require(:sharedfile).permit(:user_id, :post_id)
  end
end
