class Api::UsersController < ApplicationController

  skip_before_action :authenticate

  private

  def build_resource
    @user = User.new resource_params
  end

  def resource
    @user
  end

  def resource_params
    params.require(:user).permit(:name, :password, :email, :password_confirmation)
  end

end
