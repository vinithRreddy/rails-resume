
class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
   # @user.educations.new
  end

  # GET /users/1/edit
  def edit
    
  end

  # POST /users
  # POST /users.json
  def create
   # byebug
    @user = User.new(user_params)
    # puts @user.errors.full_messages
   # byebug
    respond_to do |format|
      if @user.save
        format.html { redirect_to user_steps_path, notice: 'User #{@user.name} was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    puts @user
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_url, notice: 'User #{@user.name} was successfully created.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  rescue_from 'User::Error' do |exception|
     redirect_to users_url, notice: exception.message
     end
    

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation, :user_id,
        personaldetails: [:id,:first_name, :last_name, :gmail, :mobile_no, :city, :state, :pin_code, :_destroy],
        skills_attributes: [:id, :name, :_destroy],
        projects_attributes: [:id, :title, :description, :technologies, :URL ,:_destroy],
        educations_attributes: [:id, :institute_name, :qualification, :specification, :start_date, :end_date, :marks, :_destroy],
        work_experiences: [:id,:company, :start_date, :end_date, :position , :_destroy],
        additional_informations: [:id,:achievements, :hobbies, :strengths, :weaknesses ,:_destroy])
    end
end
