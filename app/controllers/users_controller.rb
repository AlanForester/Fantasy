class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:users])
    @user.save
    render 'new'
  end

end
