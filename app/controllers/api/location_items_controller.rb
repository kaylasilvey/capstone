class Api::LocationItemsController < ApplicationController
  def index
    @location_items = LocationItem.all
    render "index.json.jb"
  end

  def show
    @location_item = LocationItem.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @location_item = LocationItem.new(
      location_id: params[:location_id],
      item_id: params[:item_id],
      user_id: current_user.id,
      QTY: params[:QTY],
    )
    if @location_item.save
      render json: { message: "success" }
    else
      render json: { errors: @location_item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @location_item = LocationItem.find_by(id: params[:id])
    @location_item.location_id = params[:location_id] || @location_item.location_id
    @location_item.item_id = params[:item_id] || @location_item.item_id
    @location_item.QTY = params[:QTY] || @location_item.QTY
    @location_item.save
    render "show.json.jb"
  end

  def destroy
    @location_item = LocationItem.find_by(id: params[:id])
    @location_item.destroy
    render json: { message: "Item removed from location." }
  end
end
