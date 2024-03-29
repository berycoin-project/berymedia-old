class RanksController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :needs_to_be_leader, except: [:show, :index]
  before_action :set_rank, only: [:show, :edit, :update, :destroy]

  # GET /ranks
  # GET /ranks.json
  def index
    @ranks = Rank.all
  end

  # GET /ranks/1
  # GET /ranks/1.json
  def show
  end

  # GET /ranks/new
  def new
    @rank = Rank.new
  end

  # GET /ranks/1/edit
  def edit
  end

  # POST /ranks
  # POST /ranks.json
  def create
    if !rank_already_exists?(rank_params)
      @rank = Rank.new(rank_params)

      respond_to do |format|
        if @rank.save
          format.html { redirect_to @rank, notice: 'Rank was successfully created.' }
          format.json { render :show, status: :created, location: @rank }
        else
          format.html { render :new }
          format.json { render json: @rank.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to roles_path, :flash => { :error => "This Rank already Exists" } }
      end
    end
  end

  # PATCH/PUT /ranks/1
  # PATCH/PUT /ranks/1.json
  def update
    respond_to do |format|
      if @rank.update(rank_params)
        format.html { redirect_to @rank, notice: 'Rank was successfully updated.' }
        format.json { render :show, status: :ok, location: @rank }
      else
        format.html { render :edit }
        format.json { render json: @rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ranks/1
  # DELETE /ranks/1.json
  def destroy
    @rank.destroy
    respond_to do |format|
      format.html { redirect_to ranks_url, notice: 'Rank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rank
      @rank = Rank.find(params[:id])
    end
    def rank_already_exists?(opt = {})
      Rank.all.where(name: opt[:name]).count == 1
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def rank_params
      params.require(:rank).permit(:name, :value)
    end
end
