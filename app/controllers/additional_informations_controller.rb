class AdditionalInformationsController < ApplicationController
  before_action :set_additional_information, only: [:show, :edit, :update, :destroy]
  before_action :set_personaldetail

  # GET /additional_informations
  # GET /additional_informations.json
  def index
    @additional_informations = AdditionalInformation.all
  end

  # GET /additional_informations/1
  # GET /additional_informations/1.json
  def show
  end

  # GET /additional_informations/new
  def new
    @additional_information = AdditionalInformation.new
  end

  # GET /additional_informations/1/edit
  def edit
  end

  # POST /additional_informations
  # POST /additional_informations.json
  def create
    @additional_information = AdditionalInformation.new(additional_information_params)
    @additional_information.personaldetail_id = personaldetail.id

    respond_to do |format|
      if @additional_information.save
        format.html { redirect_to edit_personaldetail_path(@personaldetail), notice: 'Additional information was successfully created.' }
        format.json { render :show, status: :created, location: @additional_information }
      else
        format.html { render :new }
        format.json { render json: @additional_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /additional_informations/1
  # PATCH/PUT /additional_informations/1.json
  def update
    respond_to do |format|
      if @additional_information.update(additional_information_params)
        format.html { redirect_to edit_personaldetail_path(@personaldetail), notice: 'Additional information was successfully updated.' }
        format.json { render :show, status: :ok, location: @additional_information }
      else
        format.html { render :edit }
        format.json { render json: @additional_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /additional_informations/1
  # DELETE /additional_informations/1.json
  def destroy
    @additional_information.destroy
    respond_to do |format|
      format.html { redirect_to edit_personaldetail_path(@personaldetail), notice: 'Additional information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_additional_information
      @additional_information = AdditionalInformation.find(params[:id])
    end

    def set_personaldetail
      @personaldetail = personaldetail.find(params[:personaldetail_id])
    end

    # Only allow a list of trusted parameters through.
    def additional_information_params
      params.require(:additional_information).permit(:achievements, :hobbies, :strengths, :weaknesses)
    end
end
