class UsersController < ApplicationController
  def new
  	@user = Users.new
  end

  def create
  	@user = Users.new(params.require(:users).permit(:fname, :lname, :email, :username, :password, :password_confirmation))
  	if @user.save
  		render 'done'
  	else
  		render 'new'
  	end
  end

  def done
  	
  end
end
