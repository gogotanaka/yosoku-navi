class ToushikomonBoardsController < ApplicationController
  # GET /toushikomon_boards
  # GET /toushikomon_boards.json
  def index
    @toushikomon_boards = ToushikomonBoard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @toushikomon_boards }
    end
  end

  # GET /toushikomon_boards/1
  # GET /toushikomon_boards/1.json
  def show
    @toushikomon_board = ToushikomonBoard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @toushikomon_board }
    end
  end

  # GET /toushikomon_boards/new
  # GET /toushikomon_boards/new.json
  def new
    @toushikomon_board = ToushikomonBoard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @toushikomon_board }
    end
  end

  # GET /toushikomon_boards/1/edit
  def edit
    @toushikomon_board = ToushikomonBoard.find(params[:id])
  end

  # POST /toushikomon_boards
  # POST /toushikomon_boards.json
  def create
    @toushikomon_board = ToushikomonBoard.new(params[:toushikomon_board])

    respond_to do |format|
      if @toushikomon_board.save
        format.html { redirect_to @toushikomon_board, notice: 'Toushikomon board was successfully created.' }
        format.json { render json: @toushikomon_board, status: :created, location: @toushikomon_board }
      else
        format.html { render action: "new" }
        format.json { render json: @toushikomon_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /toushikomon_boards/1
  # PUT /toushikomon_boards/1.json
  def update
    @toushikomon_board = ToushikomonBoard.find(params[:id])

    respond_to do |format|
      if @toushikomon_board.update_attributes(params[:toushikomon_board])
        format.html { redirect_to @toushikomon_board, notice: 'Toushikomon board was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @toushikomon_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toushikomon_boards/1
  # DELETE /toushikomon_boards/1.json
  def destroy
    @toushikomon_board = ToushikomonBoard.find(params[:id])
    @toushikomon_board.destroy

    respond_to do |format|
      format.html { redirect_to toushikomon_boards_url }
      format.json { head :no_content }
    end
  end
end
