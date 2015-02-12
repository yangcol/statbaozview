class ServerpvsController < ApplicationController
  before_action :set_serverpv, only: [:show, :edit, :update, :destroy]

  # GET /serverpvs
  # GET /serverpvs.json
  def index
    @serverpvs = Serverpv.get_all(params[:page])
  end

  # GET /serverpvs/1
  # GET /serverpvs/1.json
  def show
  end

  # GET /serverpvs/new
  def new
    @serverpv = Serverpv.new
  end

  # GET /serverpvs/1/edit
  def edit
  end

  # POST /serverpvs
  # POST /serverpvs.json
  def create
    @serverpv = Serverpv.new(serverpv_params)

    respond_to do |format|
      if @serverpv.save
        format.html { redirect_to @serverpv, notice: 'Serverpv was successfully created.' }
        format.json { render :show, status: :created, location: @serverpv }
      else
        format.html { render :new }
        format.json { render json: @serverpv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serverpvs/1
  # PATCH/PUT /serverpvs/1.json
  def update
    respond_to do |format|
      if @serverpv.update(serverpv_params)
        format.html { redirect_to @serverpv, notice: 'Serverpv was successfully updated.' }
        format.json { render :show, status: :ok, location: @serverpv }
      else
        format.html { render :edit }
        format.json { render json: @serverpv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serverpvs/1
  # DELETE /serverpvs/1.json
  def destroy
    @serverpv.destroy
    respond_to do |format|
      format.html { redirect_to serverpvs_url, notice: 'Serverpv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serverpv
      @serverpv = Serverpv.find [params[:name], params[:key], params[:duration], params[:date]]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serverpv_params
      params.require(:serverpv).permit(:name, :key, :date, :duration, :value)
    end
end
