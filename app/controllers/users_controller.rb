class UsersController < ApplicationController
    def new
    end
    
    def create
      firstname = params[:firstname]
      lastname = params[:lastname]
      password = params[:password]
      phonenumber = params[:phonenumber]
      emailaddress = params[:emailaddress]
    
      user = User.new
      user.firstname = firstname
      user.lastname = lastname
      user.password = password
      user.phonenumber = phonenumber
      user.emailaddress = emailaddress
      user.isactive = true
      user.ismanager = false
      
      if user.valid?
        user.save 
        session[:user_id] = user.id
        redirect_to root_url, notice: "Logged in!"
      else
        @errors = user.errors.full_messages
        render "new"
      end
    end
end
