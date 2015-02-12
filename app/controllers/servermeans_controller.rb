class ServermeansController < ApplicationController
  before_action :set_servermean, only: [:show, :edit, :update, :destroy]

  # GET /servermeans
  # GET /servermeans.json
  def index
    @servermeans = Servermean.get_all(params[:page])
  end

  # GET /servermeans/1
  # GET /servermeans/1.json
  def show
  end

  # GET /servermeans/new
  def new
    @servermean = Servermean.new
  end

  # GET /servermeans/1/edit
  def edit
  end

  # POST /servermeans
  # POST /servermeans.json
  def create
    @servermean = Servermean.new(servermean_params)

    respond_to do |format|
      if @servermean.save
        format.html { redirect_to @servermean, notice: 'Servermean was successfully created.' }
        format.json { render :show, status: :created, location: @servermean }
      else
        format.html { render :new }
        format.json { render json: @servermean.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servermeans/1
  # PATCH/PUT /servermeans/1.json
  def update
    respond_to do |format|
      if @servermean.update(servermean_params)
        format.html { redirect_to @servermean, notice: 'Servermean was successfully updated.' }
        format.json { render :show, status: :ok, location: @servermean }
      else
        format.html { render :edit }
        format.json { render json: @servermean.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servermeans/1
  # DELETE /servermeans/1.json
  def destroy
    @servermean.destroy
    respond_to do |format|
      format.html { redirect_to servermeans_url, notice: 'Servermean was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servermean
      # @log = Log.find [params[:name], params[:key], params[:duration], params[:date]]
      @servermean = Servermean.find [params[:name], params[:key], params[:duration], params[:date]]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servermean_params
      params.require(:servermean).permit(:name, :key, :date, :duration, :value)
    end
end
