class TemplateController < ApplicationController
    def show
        @template = params[:id]
        @user = current_user
        #@file_name="template"+params[:id]+".html.erb"
        render "template"+params[:id]+".html.erb"
    end
end
