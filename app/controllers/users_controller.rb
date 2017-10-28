class UsersController < ApplicationController
	before_action :find_user, only: [:edit, :update, :destroy]
	
	def index
	  @users = User.all
	end
  
  def edit  	
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to users_path, notice: "User #{@user.name} updated successfully."
  	else
  	end
  end

  def update
  	if @user.update_attributes(user_params)
  		redirect_to users_path, notice: "User #{@user.name} updated successfully."
  	else
  	end
  end

	def destroy
		# @user.destroy
    redirect_to users_path, notice: "User #{@user.name} destroyed successfully."
	end
  
  private

  def user_params
  	params.require(:user).permit(:name, :mobile, :email)
  end

  def find_user
  	@user = User.find(params[:id])
  end
end