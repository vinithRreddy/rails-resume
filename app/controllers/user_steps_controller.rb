class UserStepsController < ApplicationController
    include Wicked::Wizard
    steps :educations, :skills

    def show
        @user = User.last
        @educations = @user.educations.build
        @skills = @user.skills.build
        render_wizard
    end

    def update
        @user = User.last
        case step
        when :educations
            @educations = @user.educations.build
            logger.debug "New article: #{@educations.institute_name}"
            @educations.update(user_params)
            render_wizard @education
        when :skills
            @skills = @user.skills.build
            @skills.update(user_params)
            render_wizard @skills
        end
    end
   
    private

    def redirect_to_finish_wizard
        redirect_to root_url, notice: "Thank you for signing up."
    end

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation, :user_id,
          educations_attributes: [:id, :institute_name, :qualification, :specification, :start_date, :end_date, :marks, :_destroy],
          personaldetails: [:id,:first_name, :last_name, :gmail, :mobile_no, :city, :state, :pin_code, :_destroy],
          skills_attributes: [:id, :name, :_destroy],
          projects_attributes: [:id, :title, :description, :technologies, :URL ,:_destroy],
          work_experiences: [:id,:company, :start_date, :end_date, :position , :_destroy],
          additional_informations: [:id,:achievements, :hobbies, :strengths, :weaknesses ,:_destroy])
    end

end
