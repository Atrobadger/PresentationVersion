class ShiftsController < ApplicationController
    def new
    end
    
    def create
      @theUser = User.find(session[:user_id])
      starttime = params[:starttime]
      endtime = params[:endtime]
      shiftlength = params[:shiftlength]
      department = params[:department]
    
      if starttime != nil && endtime != nil && shiftlength != nil && department != nil
        shift = Shift.new
        shift.starttime = starttime
        shift.endtime = endtime
        shift.shiftlength = shiftlength
        shift.storeid = @theUser.storeid
        shift.ispublic = true
        shift.department = department
        shift.save

        redirect_to listings_path
      else
        render "new"
      end
    end
end