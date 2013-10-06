class ToushikomonsController < ApplicationController
  # GET /toushikomons
  # GET /toushikomons.json
  def index
    @toushikomons = Toushikomon.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @toushikomons }
    end
  end

  # GET /toushikomons/1
  # GET /toushikomons/1.json
  def show
    @toushikomon = Toushikomon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @toushikomon }
    end
  end

  # GET /toushikomons/new
  # GET /toushikomons/new.json
  def new
    @toushikomon = Toushikomon.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @toushikomon }
    end
  end

  # GET /toushikomons/1/edit
  def edit
    @toushikomon = Toushikomon.find(params[:id])
  end

  # POST /toushikomons
  # POST /toushikomons.json
  def create
    @toushikomon = Toushikomon.new(params[:toushikomon])

    respond_to do |format|
      if @toushikomon.save
        format.html { redirect_to @toushikomon, notice: 'Toushikomon was successfully created.' }
        format.json { render json: @toushikomon, status: :created, location: @toushikomon }
      else
        format.html { render action: "new" }
        format.json { render json: @toushikomon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /toushikomons/1
  # PUT /toushikomons/1.json
  def update
    @toushikomon = Toushikomon.find(params[:id])

    respond_to do |format|
      if @toushikomon.update_attributes(params[:toushikomon])
        format.html { redirect_to @toushikomon, notice: 'Toushikomon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @toushikomon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toushikomons/1
  # DELETE /toushikomons/1.json
  def destroy
    @toushikomon = Toushikomon.find(params[:id])
    @toushikomon.destroy

    respond_to do |format|
      format.html { redirect_to toushikomons_url }
      format.json { head :no_content }
    end
  end
end
