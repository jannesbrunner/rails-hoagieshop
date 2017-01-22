class HoagiesController < ApplicationController
  before_action :set_hoagie, only: [:show, :edit, :update, :destroy]

  # GET /hoagies
  # GET /hoagies.json
  def index
    @hoagies = Hoagie.all
  end

  # GET /hoagies/1
  # GET /hoagies/1.json
  def show
  end

  # GET /hoagies/new
  def new
    @hoagie = Hoagie.new
  end

  # GET /hoagies/1/edit
  def edit
  end

  # POST /hoagies
  # POST /hoagies.json
  def create
    @hoagie = Hoagie.new(hoagie_params)

    respond_to do |format|
      if @hoagie.save
        format.html { redirect_to @hoagie, notice: 'Hoagie was successfully created.' }
        format.json { render :show, status: :created, location: @hoagie }
      else
        format.html { render :new }
        format.json { render json: @hoagie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoagies/1
  # PATCH/PUT /hoagies/1.json
  def update
    respond_to do |format|
      if @hoagie.update(hoagie_params)
        format.html { redirect_to @hoagie, notice: 'Hoagie was successfully updated.' }
        format.json { render :show, status: :ok, location: @hoagie }
      else
        format.html { render :edit }
        format.json { render json: @hoagie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoagies/1
  # DELETE /hoagies/1.json
  def destroy
    @hoagie.destroy
    respond_to do |format|
      format.html { redirect_to hoagies_url, notice: 'Hoagie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hoagie
      @hoagie = Hoagie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hoagie_params
      params.require(:hoagie).permit(:name)
    end
end
