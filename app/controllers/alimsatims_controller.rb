class AlimsatimsController < ApplicationController
  before_action :set_alimsatim, only: [:show, :edit, :update, :destroy]

  # GET /alimsatims
  # GET /alimsatims.json
  def index
    @alimsatims = Alimsatim.all
  end

  # GET /alimsatims/1
  # GET /alimsatims/1.json
  def show
  end

  # GET /alimsatims/new
  def new
    @alimsatim = Alimsatim.new
  end

  # GET /alimsatims/1/edit
  def edit
  end

  # POST /alimsatims
  # POST /alimsatims.json
  def create
    @alimsatim = Alimsatim.new(alimsatim_params)

    respond_to do |format|
      if @alimsatim.save
        format.html { redirect_to @alimsatim, notice: 'Alimsatim was successfully created.' }
        format.json { render :show, status: :created, location: @alimsatim }
      else
        format.html { render :new }
        format.json { render json: @alimsatim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alimsatims/1
  # PATCH/PUT /alimsatims/1.json
  def update
    respond_to do |format|
      if @alimsatim.update(alimsatim_params)
        format.html { redirect_to @alimsatim, notice: 'Alimsatim was successfully updated.' }
        format.json { render :show, status: :ok, location: @alimsatim }
      else
        format.html { render :edit }
        format.json { render json: @alimsatim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alimsatims/1
  # DELETE /alimsatims/1.json
  def destroy
    @alimsatim.destroy
    respond_to do |format|
      format.html { redirect_to alimsatims_url, notice: 'Alimsatim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alimsatim
      @alimsatim = Alimsatim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alimsatim_params
      params.require(:alimsatim).permit(:urunadi, :bilgiler, :fiyat, :resim)
    end
end
