class Api::UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )

    if user.save
      render json: { message: "MISE. Let's get cookin'" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  # def show
  #   user = User.find_by(id: params[:id])
  #   render "show.json.jb"
  # end

  # def update
  #   @user = User.find_by(id: params[:id])
  #   @user.name = params[:name] || @user.name
  #   @user.email = params[:email] || @user.email
  #   @user.password_digest = params[:password] || @user.password_digest

  #   if @user.save
  #     render json: { message: "Account updated successfully" }, status: :updated
  #   else
  #     render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end
end
