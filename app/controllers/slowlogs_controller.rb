class SlowlogsController < ApplicationController
  before_action :set_slowlog, only: [:show, :edit, :update, :destroy]

  # GET /slowlogs
  # GET /slowlogs.json
  def index
    @slowlogs = Slowlog.get_all(params[:page])
  end

  # GET /slowlogs/1
  # GET /slowlogs/1.json
  def show
  end

  # GET /slowlogs/new
  def new
    @slowlog = Slowlog.new
  end

  # GET /slowlogs/1/edit
  def edit
  end

  # POST /slowlogs
  # POST /slowlogs.json
  def create
    @slowlog = Slowlog.new(slowlog_params)

    respond_to do |format|
      if @slowlog.save
        format.html { redirect_to @slowlog, notice: 'Slowlog was successfully created.' }
        format.json { render :show, status: :created, location: @slowlog }
      else
        format.html { render :new }
        format.json { render json: @slowlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slowlogs/1
  # PATCH/PUT /slowlogs/1.json
  def update
    respond_to do |format|
      if @slowlog.update(slowlog_params)
        format.html { redirect_to @slowlog, notice: 'Slowlog was successfully updated.' }
        format.json { render :show, status: :ok, location: @slowlog }
      else
        format.html { render :edit }
        format.json { render json: @slowlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slowlogs/1
  # DELETE /slowlogs/1.json
  def destroy
    @slowlog.destroy
    respond_to do |format|
      format.html { redirect_to slowlogs_url, notice: 'Slowlog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slowlog
      @slowlog = Slowlog.find [params[:name], params[:key], params[:duration], params[:date]]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slowlog_params
      params.require(:slowlog).permit(:name, :key, :duration, :date, :value)
    end
end
