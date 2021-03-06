class Api::V1::RostersController < ApplicationController
  before_action :set_roster, only: [:show, :update, :destroy]

  # GET /rosters
  def index
    @rosters = Roster.all

    render json: @rosters
  end

  # GET /rosters/1
  def show
    # Show the roster that matches the team_id
    team = Roster.where(team_id: set_roster)

    render json: team
  end

  # POST /rosters
  def create
    @roster = Roster.new(roster_params)

    if @roster.save
      render json: @roster, status: :created
    else
      render json: {
        status: 500,
        errors: @roster.errors.full_messages
      }
    end
  end

  # PATCH/PUT /rosters/1
  def update
    if @roster.update(roster_params)
      render json: @roster
    else
      render json: @roster.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rosters/1
  def destroy
    @roster.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roster
      @roster = Roster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def roster_params
      params.require(:roster).permit(:user_id, :team_id)
    end
end
