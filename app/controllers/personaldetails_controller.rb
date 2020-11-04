class PersonaldetailsController < ApplicationController
  before_action :set_personaldetail, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  # GET /personaldetails
  # GET /personaldetails.json
  def index
    @personaldetails = Personaldetail.all
  end

  # GET /personaldetails/1
  # GET /personaldetails/1.json
  def show
    @personaldetail = Personaldetail.find(params[:id])
  end

  # GET /personaldetails/new
  def new
    @personaldetail = Personaldetail.new
  end

  # GET /personaldetails/1/edit
  def edit
    @personaldetail = Personaldetail.find(params[:id])
  end

  # POST /personaldetails
  # POST /personaldetails.json
  def create
    @personaldetail = Personaldetail.new(personaldetail_params)
    @personaldetail.user_id = @user.id


    respond_to do |format|
      if @personaldetail.save
        format.html {  redirect_to edit_user_path(@user), notice: 'Personaldetail was successfully created.' }
        format.json { render :show, status: :created, location: @personaldetail }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personaldetails/1
  # PATCH/PUT /personaldetails/1.json
  def update
    respond_to do |format|
      if @personaldetail.update(personaldetail_params)
        format.html { redirect_to @user, notice: 'Personaldetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @personaldetail }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personaldetails/1
  # DELETE /personaldetails/1.json
  def destroy
    @personaldetail = Personaldetail.find(params[:id])
    @personaldetail.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Personaldetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personaldetail_params
      params.require(:personaldetail).permit(:first_name, :last_name, :gmail, :mobile_no, :city, :state, :pin_code,)
    end
end
