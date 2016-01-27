class TypeofpetsController < ApplicationController
  before_action :set_typeofpet, only: [:show, :edit, :update, :destroy]

  # GET /typeofpets
  # GET /typeofpets.json
  def index
    @typeofpets = Typeofpet.all
  end

  # GET /typeofpets/1
  # GET /typeofpets/1.json
  def show
  end

  # GET /typeofpets/new
  def new
    @typeofpet = Typeofpet.new
  end

  # GET /typeofpets/1/edit
  def edit
  end

  # POST /typeofpets
  # POST /typeofpets.json
  def create
    @typeofpet = Typeofpet.new(typeofpet_params)

    respond_to do |format|
      if @typeofpet.save
        format.html { redirect_to @typeofpet, notice: 'Typeofpet was successfully created.' }
        format.json { render :show, status: :created, location: @typeofpet }
      else
        format.html { render :new }
        format.json { render json: @typeofpet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typeofpets/1
  # PATCH/PUT /typeofpets/1.json
  def update
    respond_to do |format|
      if @typeofpet.update(typeofpet_params)
        format.html { redirect_to @typeofpet, notice: 'Typeofpet was successfully updated.' }
        format.json { render :show, status: :ok, location: @typeofpet }
      else
        format.html { render :edit }
        format.json { render json: @typeofpet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typeofpets/1
  # DELETE /typeofpets/1.json
  def destroy
    @typeofpet.destroy
    respond_to do |format|
      format.html { redirect_to typeofpets_url, notice: 'Typeofpet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typeofpet
      @typeofpet = Typeofpet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typeofpet_params
      params.require(:typeofpet).permit(:name, :pet_id)
    end
end
