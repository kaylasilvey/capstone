class Api::ListsController < ApplicationController
  before_action :authenticate_user

  def index
    @lists = List.all
    render "index.json.jb"
  end

  def show
    @list = List.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @list = List.new(
      name: params[:name],
      user_id: current_user.id,
    )
    if @list.save
      render "show.json.jb"
    else
      render json: { errors: @list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @list = List.find_by(id: params[:id])
    @list.name = params[:name] || @list.name
    @list.save
    render "show.json.jb"
  end

  def destroy
    @list = List.find_by(id: params[:id])
    @list.destroy
    render json: { message: "This list has been deleted." }
  end
end
