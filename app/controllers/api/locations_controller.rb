class Api::LocationsController < ApplicationController
  before_action :authenticate_user

  def index
    # @locations = Location.all
    @locations = current_user.locations
    render "index.json.jb"
  end

  def show
    @location = Location.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @location = Location.new(
      name: params[:name],
      user_id: current_user.id,
    )
    if @location.save
      render "show.json.jb"
    else
      render json: { errors: @location.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @location = Location.find_by(id: params[:id])
    @location.name = params[:name] || @location.name
    @location.save
    render "show.json.jb"
  end

  def destroy
    @location = Location.find_by(id: params[:id])
    @location.destroy
    render json: { message: "Location removed from your kitchen." }
  end
end
