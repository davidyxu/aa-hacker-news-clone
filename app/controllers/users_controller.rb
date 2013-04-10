class UsersController < ApplicationController

  def new
    @user = User.new
    3.times { @user.emails.build }
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      login(params[:user][:username], params[:user][:password])
      redirect_to root_url
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      redirect_to edit_user_url(@user)
    else
      render :edit
    end
  end
end
