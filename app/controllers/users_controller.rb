class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images  
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
     redirect_to post_images_path
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :profire_image)
  end
end
