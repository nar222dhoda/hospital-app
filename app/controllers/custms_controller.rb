class CustmsController < ApplicationController
  before_action :set_custm, only: [:show, :edit, :update, :destroy]

  # GET /custms
  # GET /custms.json
  def index
    @custms = Custm.all
  end

  # GET /custms/1
  # GET /custms/1.json
  def show
  end

  # GET /custms/new
  def new
    @custm = Custm.new
  end

  # GET /custms/1/edit
  def edit
  end

  # POST /custms
  # POST /custms.json
  def create
    @custm = Custm.new(custm_params)

    respond_to do |format|
      if @custm.save
        format.html { redirect_to @custm, notice: 'Custm was successfully created.' }
        format.json { render :show, status: :created, location: @custm }
      else
        format.html { render :new }
        format.json { render json: @custm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custms/1
  # PATCH/PUT /custms/1.json
  def update
    respond_to do |format|
      if @custm.update(custm_params)
        format.html { redirect_to @custm, notice: 'Custm was successfully updated.' }
        format.json { render :show, status: :ok, location: @custm }
      else
        format.html { render :edit }
        format.json { render json: @custm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custms/1
  # DELETE /custms/1.json
  def destroy
    @custm.destroy
    respond_to do |format|
      format.html { redirect_to custms_url, notice: 'Custm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custm
      @custm = Custm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custm_params
      params.require(:custm).permit(:name, :pets_name, :next_appointment, :reason)
    end
end
