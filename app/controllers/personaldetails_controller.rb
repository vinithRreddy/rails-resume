class PersonaldetailsController < ApplicationController
  before_action :set_personaldetail, only: [:show, :edit, :update, :destroy]

  # GET /personaldetails
  # GET /personaldetails.json
  def index
    @personaldetails = Personaldetail.all
  end

  # GET /personaldetails/1
  # GET /personaldetails/1.json
  def show
  end

  # GET /personaldetails/new
  def new
    @personaldetail = Personaldetail.new
  end

  # GET /personaldetails/1/edit
  def edit
  end

  # POST /personaldetails
  # POST /personaldetails.json
  def create
    @personaldetail = Personaldetail.new(personaldetail_params)

    respond_to do |format|
      if @personaldetail.save
        format.html { redirect_to @personaldetail, notice: 'Personaldetail was successfully created.' }
        format.json { render :show, status: :created, location: @personaldetail }
      else
        format.html { render :new }
        format.json { render json: @personaldetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personaldetails/1
  # PATCH/PUT /personaldetails/1.json
  def update
    respond_to do |format|
      if @personaldetail.update(personaldetail_params)
        format.html { redirect_to @personaldetail, notice: 'Personaldetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @personaldetail }
      else
        format.html { render :edit }
        format.json { render json: @personaldetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personaldetails/1
  # DELETE /personaldetails/1.json
  def destroy
    @personaldetail.destroy
    respond_to do |format|
      format.html { redirect_to personaldetails_url, notice: 'Personaldetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personaldetail
      @personaldetail = Personaldetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personaldetail_params
      params.require(:personaldetail).permit(:first_name, :last_name, :gmail, :mobile_no, :city, :state, :pin_code)
    end
end
