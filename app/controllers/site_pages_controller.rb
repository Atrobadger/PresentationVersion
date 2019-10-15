class SitePagesController < ApplicationController
  def home
    @shifts = Shift.all
    @theUser = User.find(session[:user_id])
    render 'home'
  end

  def profile
    @theUser = User.find(session[:user_id])
  end

  def listings
    if logged_in?
      @preferences = Preference.find_by(userid: session[:user_id])
      @shiftScore = 0
      @theUser = User.find(session[:user_id])
    end
    @shifts = Shift.all
    render 'listings'
  end
  
  def movePrivate
    if logged_in?
      @preferences = Preference.find_by(userid: session[:user_id])
      @shiftScore = 0
      @theUser = User.find(session[:user_id])
    end
    @shifts = Shift.all
    @shift = Shift.find(params[:id])
    @shift.update(ispublic: "false")
    @shift.update(userid: session[:user_id])
    render 'listings'
  end
  
  def movePublic
    @theUser = User.find(session[:user_id])
    @shifts = Shift.all
    @shift = Shift.find(params[:id])
    @shift.update(ispublic: "true")
    render 'home'
  end
  
  def sortList
  #Going to fetch the user's id
  #Going to check the preferences table based on the user id
  #Going to score the list items based on preference
    @theList = Shift.all
    @preferences = Preference.find_by(userid: session[:user_id])
  
  end
  
  def notifications
    
  end
  
  def contact
  
  end
  
  def admin
    @users = User.all
    if logged_in?
      @theUser = User.find(session[:user_id])
    end
  end
  
  def changeActivity
    @users = User.all
    @user = User.find(params[:id])
    if @user.isactive == false
      @user.update(isactive: "true")
    else
      @user.update(isactive: "false")
    end
    render 'admin'
  end


end
