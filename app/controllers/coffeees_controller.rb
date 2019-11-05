class CoffeeesController < ApplicationController
  before_action :set_coffeee, only: [:show, :edit, :update, :destroy]

  # GET /coffeees
  # GET /coffeees.json
  def index
    @coffeees = Coffeee.all
  end

  # GET /coffeees/1
  # GET /coffeees/1.json
  def show
  end

  # GET /coffeees/new
  def new
    @coffeee = Coffeee.new
  end

  # GET /coffeees/1/edit
  def edit
  end

  # POST /coffeees
  # POST /coffeees.json
  def create
    @coffeee = Coffeee.new(coffeee_params)

    respond_to do |format|
      if @coffeee.save
        format.html { redirect_to @coffeee, notice: 'Coffeee was successfully created.' }
        format.json { render :show, status: :created, location: @coffeee }
      else
        format.html { render :new }
        format.json { render json: @coffeee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coffeees/1
  # PATCH/PUT /coffeees/1.json
  def update
    respond_to do |format|
      if @coffeee.update(coffeee_params)
        format.html { redirect_to @coffeee, notice: 'Coffeee was successfully updated.' }
        format.json { render :show, status: :ok, location: @coffeee }
      else
        format.html { render :edit }
        format.json { render json: @coffeee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coffeees/1
  # DELETE /coffeees/1.json
  def destroy
    @coffeee.destroy
    respond_to do |format|
      format.html { redirect_to coffeees_url, notice: 'Coffeee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffeee
      @coffeee = Coffeee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coffeee_params
      params.require(:coffeee).permit(:name, :type, :desctrption, :home, :img, :something)
    end
end
