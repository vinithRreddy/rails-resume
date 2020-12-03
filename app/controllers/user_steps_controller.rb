class UserStepsController < ApplicationController
    include Wicked::Wizard
    steps :personaldetail,:educations, :skills, :projects, :work_experiences,:additional_informations
    def show
        @user = current_user
        @education = @user.educations.build
        @additional_informations = @user.additional_informations.build
        @skills = @user.skills.build
        @projects = @user.projects.build
        
        @work_experiences = @user.work_experiences.build
    
        render_wizard
    end

def update
    @user = current_user
    @user.update!(user_params)
    render_wizard @user
end
   
private

def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :user_id,
      educations_attributes: [:id, :institute_name, :qualification, :specification, :start_date, :end_date, :marks, :_destroy],
      personaldetail_attributes: [:id,:first_name, :last_name, :gmail, :mobile_no, :city, :state, :pin_code, :_destroy],
      skills_attributes: [:id, :name, :_destroy, :level],
      projects_attributes: [:id, :title, :description, :technologies, :URL ,:_destroy],
      work_experiences_attributes: [:id,:company, :start_date, :end_date, :position , :_destroy],
      additional_informations_attributes: [:id,:achievements, :hobbies, :strengths, :weaknesses ,:_destroy])
end
end