class ColsController < ApplicationController
  before_action :set_col, only: [:show, :edit, :update, :destroy]

  # GET /cols
  # GET /cols.json
  def index
    @cols = Col.all
  end

  # GET /cols/1
  # GET /cols/1.json
  def show
  end

  # GET /cols/new
  def new
    @col = Col.new
  end

  # GET /cols/1/edit
  def edit
  end

  # POST /cols
  # POST /cols.json
  def create
    @col = Col.new(col_params)

    respond_to do |format|
      if @col.save
        format.html { redirect_to @col, notice: 'Col was successfully created.' }
        format.json { render :show, status: :created, location: @col }
      else
        format.html { render :new }
        format.json { render json: @col.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cols/1
  # PATCH/PUT /cols/1.json
  def update
    respond_to do |format|
      if @col.update(col_params)
        format.html { redirect_to @col, notice: 'Col was successfully updated.' }
        format.json { render :show, status: :ok, location: @col }
      else
        format.html { render :edit }
        format.json { render json: @col.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cols/1
  # DELETE /cols/1.json
  def destroy
    @col.destroy
    respond_to do |format|
      format.html { redirect_to cols_url, notice: 'Col was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_col
      @col = Col.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def col_params
      params.require(:col).permit(:name, :age, :sub)
    end
end
