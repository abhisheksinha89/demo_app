class HubabasController < ApplicationController
  before_action :set_hubaba, only: [:show, :edit, :update, :destroy]

  # GET /hubabas
  # GET /hubabas.json
  def index
    @hubabas = Hubaba.all
  end

  # GET /hubabas/1
  # GET /hubabas/1.json
  def show
  end

  # GET /hubabas/new
  def new
    @hubaba = Hubaba.new
  end

  # GET /hubabas/1/edit
  def edit
  end

  # POST /hubabas
  # POST /hubabas.json
  def create
    @hubaba = Hubaba.new(hubaba_params)

    respond_to do |format|
      if @hubaba.save
        format.html { redirect_to @hubaba, notice: 'Hubaba was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hubaba }
      else
        format.html { render action: 'new' }
        format.json { render json: @hubaba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hubabas/1
  # PATCH/PUT /hubabas/1.json
  def update
    respond_to do |format|
      if @hubaba.update(hubaba_params)
        format.html { redirect_to @hubaba, notice: 'Hubaba was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hubaba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hubabas/1
  # DELETE /hubabas/1.json
  def destroy
    @hubaba.destroy
    respond_to do |format|
      format.html { redirect_to hubabas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hubaba
      @hubaba = Hubaba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hubaba_params
      params.require(:hubaba).permit(:name, :man)
    end
end
