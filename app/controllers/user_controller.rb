class UserController < ApplicationController
	 attr_accessor :username, :bio, :mail
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	 if @user.save
  	 	redirect_to "/"
  	 end
   def user_params
        params.require(:user).permit(:username, :bio, :mail)
    end
  end
end
