class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
      if @users
        render json: {
        users: @users
      }
    else
        render json: {
        status: 500,
        errors: ['No users found']
    }
    end
  end

  # GET /users/1
  def show
    if @user
      render json: {
      user: @user
   }
   else
      render json: {
      status: 500,
      errors: ['User not found']
    }
   end
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      login!  
      render json: {
      status: :created,
      user: @user
    }
    else 
      render json: {
      status: 500,
      errors: @user.errors.full_messages
    }
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :phone_number, :team_id, :winter_team, :public_sector)
    end
end
