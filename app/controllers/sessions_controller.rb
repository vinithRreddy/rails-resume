class SessionsController <ApplicationController

  def new
      #login page is displayed
  end

  def create
      #byebug
      @user=User.find_by(name: params[:session][:name])
      if @user && @user.authenticate(params[:session][:password])
          session[:user_id]=@user.id
          flash[:notice]="Logged in successfully!"
          redirect_to @user
      else
          #because we are using render here we are sayung flash.now
          flash.now[:alert]="Could not Login.Try again"
          render "new"
      end
  end

  def delete
      session[:@user_id]=nil
      flash[:alert]="Logged Out Successfully"
      redirect_to root_path
  end

end