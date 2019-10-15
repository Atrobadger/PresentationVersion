class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(emailaddress: params[:session][:emailaddress])
    if user
      if user.isactive == true
        log_in user
        redirect_to home_path
      else
        flash.now[:danger] = 'Inactive account, contact system admin'
        redirect_to login_path
      end
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
end
