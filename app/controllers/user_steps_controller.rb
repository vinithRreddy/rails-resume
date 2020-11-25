class UserStepsController < ApplicationController
    include Wicked::Wizard
    steps :educations, :skills, :personaldetails, :work_experiences
    def show
        @user = current_user
        @education = @user.educations.build
        @skills = @user.skills.build
        @personaldetails = @user.personaldetails.build
        @work_experiences=@user.work_experiences.build
        render_wizard
    end

    def update
        @user = User.last
        case step
        when :educations
            logger.debug "New article: #{user_params}"
            @user.update!(user_params)
            render_wizard @user
        when :skills
            @user.update!(user_params)
            render_wizard @user
        when :work_experiences
            @user.update!(user_params)
            render_wizard @user
        when :personaldetails	
            logger.debug "New article: #{@personaldetails.inspect}"
            @user.update!(user_params)
            render_wizard @user
        end
    end
   
    private

    def redirect_to_finish_wizard
        redirect_to user_path(@user), notice: "This is your resume"
    end

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation, :user_id,
          educations_attributes: [:id, :institute_name, :qualification, :specification, :start_date, :end_date, :marks, :_destroy],
          personaldetails_attributes: [:id,:first_name, :last_name, :gmail, :mobile_no, :city, :state, :pin_code, :_destroy],
          skills_attributes: [:id, :name, :_destroy, :level],
          projects_attributes: [:id, :title, :description, :technologies, :URL ,:_destroy],
          work_experiences_attributes: [:id,:company, :start_date, :end_date, :position , :location, :description, :_destroy],
          additional_informations: [:id,:achievements, :hobbies, :strengths, :weaknesses ,:_destroy])
    end

end
