class AppointsController < ApplicationController
  before_action :set_appoint, only: [:show, :edit, :update, :destroy]

  # GET /appoints
  # GET /appoints.json
  def index
    @appoints = Appoint.all
  end

  # GET /appoints/1
  # GET /appoints/1.json
  def show
  end

  # GET /appoints/new
  def new
    @appoint = Appoint.new
  end

  # GET /appoints/1/edit
  def edit
  end

  # POST /appoints
  # POST /appoints.json
  def create
    @appoint = Appoint.new(appoint_params)

    respond_to do |format|
      if @appoint.save
        format.html { redirect_to @appoint, notice: 'Appoint was successfully created.' }
        format.json { render :show, status: :created, location: @appoint }
      else
        format.html { render :new }
        format.json { render json: @appoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appoints/1
  # PATCH/PUT /appoints/1.json
  def update
    respond_to do |format|
      if @appoint.update(appoint_params)
        format.html { redirect_to @appoint, notice: 'Appoint was successfully updated.' }
        format.json { render :show, status: :ok, location: @appoint }
      else
        format.html { render :edit }
        format.json { render json: @appoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appoints/1
  # DELETE /appoints/1.json
  def destroy
    @appoint.destroy
    respond_to do |format|
      format.html { redirect_to appoints_url, notice: 'Appoint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appoint
      @appoint = Appoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appoint_params
      params.require(:appoint).permit(:reminder, :reason, :past_visit, :custm_id, :doctor_id, :pet_id)
    end
end
