class Api::ItemsController < ApplicationController
  before_action :authenticate_user

  def index
    @items = Item.all
    render "index.json.jb"
  end

  def show
    @item = Item.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @item = Item.new(
      name: params[:name],
      UOM: params[:UOM],
      user_id: current_user.id,
    )
    if @item.save
      render "show.json.jb"
    else
      render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @item = Item.find_by(id: params[:id])
    @item.name = params[:name] || @item.name
    @item.UOM = params[:UOM] || @item.name
    @item.save
    render "show.json.jb"
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy
    render json: { message: "Item removed from your inventory" }
  end
end
