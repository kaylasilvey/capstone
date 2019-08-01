class Api::ExpirationsController < ApplicationController
  def index
    @expirations = Expiration.all
    render "index.json.jb"
  end

  def show
    @expiration = Expiration.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @expiration = Expiration.new(
      date: params[:date],
      user_id: current_user.id,
    )
    if @expiration.save
      render "show.json.jb"
    else
      render json: { errors: @expiration.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @expiration = Expiration.find_by(id: params[:id])
    @expiration.date = params[:date] || @expiration.date
    @expiration.save
    render "show.json.jb"
  end

  def destroy
    @expiration = Expiration.find_by(id: params[:id])
    @expiration.destroy
    render json: { message: "This Expiration has been deleted." }
  end
end
