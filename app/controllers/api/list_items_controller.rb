class Api::ListItemsController < ApplicationController
  # before_action :authenticate_user

  def index
    @list_items = ListItem.all
    render "index.json.jb"
  end

  def show
    @list_item = ListItem.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @list_item = ListItem.new(
      name: params[:name],
      user_id: current_user.id,
    )
    if @list_item.save
      render "show.json.jb"
    else
      render json: { errors: @list_item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @list_item = ListItem.find_by(id: params[:id])
    @list_item.name = params[:name] || @list_item.name
    @list_item.save
    render "show.json.jb"
  end

  def destroy
    @list_item = ListItem.find_by(id: params[:id])
    @list_item.destroy
    render json: { message: "Item removed from list." }
  end
end
