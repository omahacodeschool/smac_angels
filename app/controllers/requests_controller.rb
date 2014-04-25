class RequestsController < ApplicationController
  # GET /requests
  # GET /requests.json
  before_filter :require_login, :except => [:show, :index, :become_angel]
  def index
    @requests = Request.order("created_at DESC").where(:angel_id => nil)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @requests }
    end
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
    @request = Request.find(params[:id])
    @angel = User.where(:id => @request.angel_id)
    @user_id = session[:user_id]
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @request }
    end
  end

  # GET /requests/new
  # GET /requests/new.json
  def new
    @request = Request.new
    @sockmonkeys = Sockmonkey.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @request }
    end
  end

  # GET /requests/1/edit
  def edit
    @request = Request.find(params[:id])
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(params[:request])
    @sockmonkeys = Sockmonkey.all
    #raise params.inspect
    respond_to do |format|
      if @request.save
        Status.create(:request_id => @request.id, :status => 'Unmatched')
        Email.new.send_email("Requestor Signup", User.find(@request.requestor_id), @request.id)
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render json: @request, status: :created, location: @request }
      else
        format.html { render action: "new" }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /requests/1
  # PUT /requests/1.json
  def update
    @request = Request.find(params[:id])

    respond_to do |format|
      if @request.update_attributes(params[:request])
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request = Request.find(params[:id])
    @request.statuses.each { |s| s.destroy }
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url }
      format.json { head :no_content }
    end
  end
  
  # Public: 
  # Checks to see if the user is logged in
  # Finds the user object that requested a smac monkey
  # Adds the angel to requestor's request
  def become_angel
    if !current_user
      session[:request_id] = params[:request_id]

      params[:anon_button] ? session[:anonymous] = 1 : session[:anonymous] = 0

      redirect_to(new_session_path) and return
    end

    @request = Request.find(params[:request_id])
    
    
    
    @request.add_angel(session[:user_id], params[:anon_button] ? 1 : 0)

    redirect_to (request_path(@request.id))
  
  end
end
