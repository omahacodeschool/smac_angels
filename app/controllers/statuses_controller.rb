class StatusesController < ApplicationController
  before_filter :require_login
  
  # GET /statuses
  # GET /statuses.json

  # POST /statuses
  # POST /statuses.json
  def create
    @status = Status.new(params[:status])
    @status.save

    redirect_to @status, notice: 'Status was successfully created.'
  end

  # PUT /statuses/1
  # PUT /statuses/1.json
  def update
    @status = Status.find(params[:id])

    redirect_to @status, notice: 'Status was successfully updated.'
  end

  # DELETE /statuses/1
  # DELETE /statuses/1.json
  def destroy
    @status = Status.find(params[:id])
    @status.destroy

    redirect_to statuses_url
  end
end
