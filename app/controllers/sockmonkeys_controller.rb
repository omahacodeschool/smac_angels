class SockmonkeysController < ApplicationController
  # GET /sockmonkeys
  # GET /sockmonkeys.json
  def index
    @sockmonkeys = Sockmonkey.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sockmonkeys }
    end
  end

  # GET /sockmonkeys/1
  # GET /sockmonkeys/1.json
  def show
    @sockmonkey = Sockmonkey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sockmonkey }
    end
  end

  # GET /sockmonkeys/new
  # GET /sockmonkeys/new.json
  def new
    @sockmonkey = Sockmonkey.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sockmonkey }
    end
  end

  # GET /sockmonkeys/1/edit
  def edit
    @sockmonkey = Sockmonkey.find(params[:id])
  end

  # POST /sockmonkeys
  # POST /sockmonkeys.json
  def create
    @sockmonkey = Sockmonkey.new(params[:sockmonkey])

    respond_to do |format|
      if @sockmonkey.save
        format.html { redirect_to @sockmonkey, notice: 'Sockmonkey was successfully created.' }
        format.json { render json: @sockmonkey, status: :created, location: @sockmonkey }
      else
        format.html { render action: "new" }
        format.json { render json: @sockmonkey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sockmonkeys/1
  # PUT /sockmonkeys/1.json
  def update
    @sockmonkey = Sockmonkey.find(params[:id])

    respond_to do |format|
      if @sockmonkey.update_attributes(params[:sockmonkey])
        format.html { redirect_to @sockmonkey, notice: 'Sockmonkey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sockmonkey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sockmonkeys/1
  # DELETE /sockmonkeys/1.json
  def destroy
    @sockmonkey = Sockmonkey.find(params[:id])
    @sockmonkey.destroy

    respond_to do |format|
      format.html { redirect_to sockmonkeys_url }
      format.json { head :no_content }
    end
  end
end
