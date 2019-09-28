class ShiftsController < ApplicationController
    def new
    end
    
    def create
      starttime = params[:starttime]
      endtime = params[:endtime]
      shiftlength = params[:shiftlength]
      storeid = params[:storeid]
      department = params[:department]
    
      if starttime != nil && endtime != nil && shiftlength != nil && storeid != nil && department != nil
        shift = Shift.new
        shift.starttime = starttime
        shift.endtime = endtime
        shift.shiftlength = shiftlength
        shift.storeid = storeid
        shift.ispublic = true
        shift.department = department
        shift.save

        redirect_to listings_path
      else
        render "new"
      end
    end
end