class AdminController < ApplicationController
  
  def index
    # !!! Should be changed to integer values from status when that is completed. !!!
    @matched_req = Request.where(:angel_id != nil, :requestor_id !=nil)
    @completed_req = Request.where(Request.status == 5)
    @unmatched_req = Request.where(:angel_id == nil)
  end
  
  # Admin view needs to show all attributes associated with that request
  def show
    @request = Request.find(params[:id])
  end
  
  #Admin view needs to edit request and allow the requestor to become unmatched from an angel
  def edit
    @request = Request.find(params[:id])
end
