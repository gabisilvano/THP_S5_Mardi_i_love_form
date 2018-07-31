class UserController < ApplicationController
	 attr_accessor :username, :bio, :mail
  def new
  	@user = User.new
  	@users = User.last
  	puts @users
  end

  def create
  	@user = User.new(user_params)
  	 if @user.save
  	 	redirect_to "/"
  	 end
    end
   def show
   	
   end
    
    def user_params
	params.require(:user).permit(:username, :mail, :bio)
	end
end