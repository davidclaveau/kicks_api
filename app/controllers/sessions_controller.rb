class SessionsController < ApplicationController
  
  
  def create
    @user = User.find_by(email: session_params[:email])
  
    # Authenticate the user data with .authenticate, a method that the user model
    # gets from bcrypt and the has_secure_password line in the user class.
    if @user && @user.authenticate(session_params[:password])
      login!
      is_admin?
      render json: {
        logged_in: true,
        user: @user,
        role: @role_name
      }
    else
      render json: { 
        status: 401,
        errors: ['Incorrect email or password, please try again']
      }
    end
  end

  def is_logged_in?
    if logged_in? && current_user && is_admin?
      render json: {
        logged_in: true,
        user: current_user,
        role: @role_name
      }
    else
      render json: {
        logged_in: false,
        message: 'No such user',
        role: null
      }
    end
  end

  def destroy
    logout!
    render json: {
      status: 200,
      logged_out: true
    }
  end

  private
  
  def session_params
    params.require(:user).permit(:email, :password)
  end
end