class Api::ItemsController < ApplicationController
  def index
    @items = Item.all
    render "index.json.jb"
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end
end
