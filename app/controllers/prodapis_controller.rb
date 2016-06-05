class ProdapisController < ApplicationController
  before_action :set_prodapi, only: [:show, :edit, :update, :destroy]

require 'lib/meli'

  # GET /prodapis
  # GET /prodapis.json
  def index
    @prodapis = Prodapi.all
  end

  # GET /prodapis/1
  # GET /prodapis/1.json
  def show
  end

  # GET /prodapis/new
  def new
    @prodapi = Prodapi.new
  end

  # GET /prodapis/1/edit
  def edit
  end

  # POST /prodapis
  # POST /prodapis.json
  def create
    @prodapi = Prodapi.new(prodapi_params)

    respond_to do |format|
      if @prodapi.save
        format.html { redirect_to @prodapi, notice: 'Prodapi was successfully created.' }
        format.json { render :show, status: :created, location: @prodapi }
      else
        format.html { render :new }
        format.json { render json: @prodapi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodapis/1
  # PATCH/PUT /prodapis/1.json
  def update
    respond_to do |format|
      if @prodapi.update(prodapi_params)
        format.html { redirect_to @prodapi, notice: 'Prodapi was successfully updated.' }
        format.json { render :show, status: :ok, location: @prodapi }
      else
        format.html { render :edit }
        format.json { render json: @prodapi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodapis/1
  # DELETE /prodapis/1.json
  def destroy
    @prodapi.destroy
    respond_to do |format|
      format.html { redirect_to prodapis_url, notice: 'Prodapi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodapi
      @prodapi = Prodapi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prodapi_params
      params.require(:prodapi).permit(:name, :price, :category_id)
    end
end
