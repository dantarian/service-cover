class WorkingDatesController < ApplicationController
  before_action :set_working_date, only: [:show, :edit, :update, :destroy]

  # GET /working_dates
  # GET /working_dates.json
  def index
    @working_dates = WorkingDate.all
  end

  # GET /working_dates/1
  # GET /working_dates/1.json
  def show
  end

  # GET /working_dates/new
  def new
    @working_date = WorkingDate.new
  end

  # GET /working_dates/1/edit
  def edit
  end

  # POST /working_dates
  # POST /working_dates.json
  def create
    @working_date = WorkingDate.new(working_date_params)

    respond_to do |format|
      if @working_date.save
        format.html { redirect_to @working_date, notice: 'Working date was successfully created.' }
        format.json { render :show, status: :created, location: @working_date }
      else
        format.html { render :new }
        format.json { render json: @working_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /working_dates/1
  # PATCH/PUT /working_dates/1.json
  def update
    respond_to do |format|
      if @working_date.update(working_date_params)
        format.html { redirect_to @working_date, notice: 'Working date was successfully updated.' }
        format.json { render :show, status: :ok, location: @working_date }
      else
        format.html { render :edit }
        format.json { render json: @working_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /working_dates/1
  # DELETE /working_dates/1.json
  def destroy
    @working_date.destroy
    respond_to do |format|
      format.html { redirect_to working_dates_url, notice: 'Working date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_working_date
      @working_date = WorkingDate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def working_date_params
      params.require(:working_date).permit(:working_date, :day_type)
    end
end
