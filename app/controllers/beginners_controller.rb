class BeginnersController < ApplicationController
  # GET /beginners
  # GET /beginners.json
  def index
    @beginners = Beginner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @beginners }
    end
  end

  # GET /beginners/1
  # GET /beginners/1.json
  def show
    @beginner = Beginner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @beginner }
    end
  end

  # GET /beginners/new
  # GET /beginners/new.json
  def new
    @beginner = Beginner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @beginner }
    end
  end

  # GET /beginners/1/edit
  def edit
    @beginner = Beginner.find(params[:id])
  end

  # POST /beginners
  # POST /beginners.json
  def create
    @beginner = Beginner.new(params[:beginner])

    respond_to do |format|
      if @beginner.save
        format.html { redirect_to @beginner, notice: 'Beginner was successfully created.' }
        format.json { render json: @beginner, status: :created, location: @beginner }
      else
        format.html { render action: "new" }
        format.json { render json: @beginner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /beginners/1
  # PUT /beginners/1.json
  def update
    @beginner = Beginner.find(params[:id])

    respond_to do |format|
      if @beginner.update_attributes(params[:beginner])
        format.html { redirect_to @beginner, notice: 'Beginner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @beginner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beginners/1
  # DELETE /beginners/1.json
  def destroy
    @beginner = Beginner.find(params[:id])
    @beginner.destroy

    respond_to do |format|
      format.html { redirect_to beginners_url }
      format.json { head :no_content }
    end
  end
end
