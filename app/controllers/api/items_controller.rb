class Api::ItemsController < ApplicationController
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
  end

  def destroy
  end
end
