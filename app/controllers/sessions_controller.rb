class SessionsController < ApplicationController
  def new
  	@title="Sign In"
  end

  def create
  	user=User.authenticate(params[:session][:email], params[:session][:password])

  	if user.nil?
  		flash.now[:error] = "Invalid email/Passwprd combination"
  		@title="Sign In"
  		render 'new'  	
  	else
  		#Handle it
  	end
  end

  def destroy
  	
  end

end