class CourcesController < ApplicationController
  before_action :set_cource, only: [:show, :edit, :update, :destroy]

  # GET /cources
  # GET /cources.json
  def index
    @cources = Cource.all
  end

  # GET /cources/1
  # GET /cources/1.json
  def show
  end

  # GET /cources/new
  def new
    @cource = Cource.new
  end

  # GET /cources/1/edit
  def edit
  end

  # POST /cources
  # POST /cources.json
  def create
    @cource = Cource.new(cource_params)

    respond_to do |format|
      if @cource.save
        format.html { redirect_to @cource, notice: 'Cource was successfully created.' }
        format.json { render :show, status: :created, location: @cource }
      else
        format.html { render :new }
        format.json { render json: @cource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cources/1
  # PATCH/PUT /cources/1.json
  def update
    respond_to do |format|
      if @cource.update(cource_params)
        format.html { redirect_to @cource, notice: 'Cource was successfully updated.' }
        format.json { render :show, status: :ok, location: @cource }
      else
        format.html { render :edit }
        format.json { render json: @cource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cources/1
  # DELETE /cources/1.json
  def destroy
    @cource.destroy
    respond_to do |format|
      format.html { redirect_to cources_url, notice: 'Cource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cource
      @cource = Cource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cource_params
      params.require(:cource).permit(:title, :description)
    end
end
