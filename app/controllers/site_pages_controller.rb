class SitePagesController < ApplicationController
  def home
    @shifts = Shift.all
    render 'home'
  end

  def profile
  end

  def listings
    @shifts = Shift.all
    render 'listings'
  end
  
  def movePrivate
    @shifts = Shift.all
    @shift = Shift.find(params[:id])
    @shift.update(ispublic: "false")
    render 'listings'
  end
  
  def movePublic
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
  @preferences = Preference.all
  
  end
  
  def newShift
    
  end
  
end
