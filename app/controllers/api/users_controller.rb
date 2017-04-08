class Api::UsersController < ApplicationController

  skip_before_action :authenticate, only: [:create]

  private

  def build_resource
    @user = User.new resource_params
  end

  def resource
    current_user.increment(:balance,params[:user][:amount].to_i)
    @user = current_user
  end

  def resource_params
    params.require(:user).permit(:name, :password, :email, :password_confirmation)
  end

end
