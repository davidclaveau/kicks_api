class Api::V1::RoleResourcesController < ApplicationController
  before_action :set_role_resource, only: [:show, :update, :destroy]

  # GET /role_resources
  def index
    @role_resources = RoleResource.all

    render json: @role_resources
  end

  # GET /role_resources/1
  def show
    render json: @role_resource
  end

  # POST /role_resources
  def create
    @role_resource = RoleResource.new(role_resource_params)

    if @role_resource.save
      render json: @role_resource, status: :created, location: @role_resource
    else
      render json: @role_resource.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /role_resources/1
  def update
    if @role_resource.update(role_resource_params)
      render json: @role_resource
    else
      render json: @role_resource.errors, status: :unprocessable_entity
    end
  end

  # DELETE /role_resources/1
  def destroy
    @role_resource.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role_resource
      @role_resource = RoleResource.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def role_resource_params
      params.require(:role_resource).permit(:resource_id, :role)
    end
end
