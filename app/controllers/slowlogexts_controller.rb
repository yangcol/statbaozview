class SlowlogextsController < ApplicationController
  before_action :set_slowlogext, only: [:show, :edit, :update, :destroy]

  # GET /slowlogexts
  # GET /slowlogexts.json
  def index
    @slowlogexts = Slowlogext.get_all(params[:page])
  end

  # GET /slowlogexts/1
  # GET /slowlogexts/1.json
  def show
  end

  # GET /slowlogexts/new
  def new
    @slowlogext = Slowlogext.new
  end

  # GET /slowlogexts/1/edit
  def edit
  end

  # POST /slowlogexts
  # POST /slowlogexts.json
  def create
    @slowlogext = Slowlogext.new(slowlogext_params)

    respond_to do |format|
      if @slowlogext.save
        format.html { redirect_to @slowlogext, notice: 'Slowlogext was successfully created.' }
        format.json { render :show, status: :created, location: @slowlogext }
      else
        format.html { render :new }
        format.json { render json: @slowlogext.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slowlogexts/1
  # PATCH/PUT /slowlogexts/1.json
  def update
    respond_to do |format|
      if @slowlogext.update(slowlogext_params)
        format.html { redirect_to @slowlogext, notice: 'Slowlogext was successfully updated.' }
        format.json { render :show, status: :ok, location: @slowlogext }
      else
        format.html { render :edit }
        format.json { render json: @slowlogext.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slowlogexts/1
  # DELETE /slowlogexts/1.json
  def destroy
    @slowlogext.destroy
    respond_to do |format|
      format.html { redirect_to slowlogexts_url, notice: 'Slowlogext was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slowlogext
      @slowlogext = Slowlogext.find [params[:name], params[:key], params[:duration], params[:date]]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slowlogext_params
      params.require(:slowlogext).permit(:name, :key, :duration, :date, :value)
    end
end
