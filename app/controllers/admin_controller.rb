class AdminController < ApplicationController
  
  def index
    # !!! Should be changed to integer values from status when that is completed. !!!

    @completed_req = Request.where(:current_status => 10)
    @matched_req   = Request.where(:current_status => 5)
    @unmatched_req = Request.where(:current_status => 0)
  end
  
  # Admin view needs to show all attributes associated with that request
  def show
    @request = Request.find(params[:id])
  end
  
  #Admin view needs to edit request and allow the requestor to become unmatched from an angel
  def edit
    @request = Request.find(params[:id])
  end
  
  def history
    @request = Request.all
  end
  
end
