class TovarsController < ApplicationController
  before_action :set_tovar, only: [:show, :edit, :update, :destroy]

  # GET /tovars
  # GET /tovars.json
  def index
    @tovars = Tovar.all
  end

  # GET /tovars/1
  # GET /tovars/1.json
  def show
  end

  # GET /tovars/new
  def new
    @tovar = Tovar.new
  end

  # GET /tovars/1/edit
  def edit
  end

  # POST /tovars
  # POST /tovars.json
  def create
    @tovar = Tovar.new(tovar_params)

    respond_to do |format|
      if @tovar.save
        format.html { redirect_to @tovar, notice: 'Tovar was successfully created.' }
        format.json { render :show, status: :created, location: @tovar }
      else
        format.html { render :new }
        format.json { render json: @tovar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tovars/1
  # PATCH/PUT /tovars/1.json
  def update
    respond_to do |format|
      if @tovar.update(tovar_params)
        format.html { redirect_to @tovar, notice: 'Tovar was successfully updated.' }
        format.json { render :show, status: :ok, location: @tovar }
      else
        format.html { render :edit }
        format.json { render json: @tovar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tovars/1
  # DELETE /tovars/1.json
  def destroy
    @tovar.destroy
    respond_to do |format|
      format.html { redirect_to tovars_url, notice: 'Tovar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tovar
      @tovar = Tovar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tovar_params
      params.require(:tovar).permit(:name)
    end
end
