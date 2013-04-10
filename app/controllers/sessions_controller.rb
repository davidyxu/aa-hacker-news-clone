class SessionsController < ApplicationController
  def new
    @username = ""
  end

  def create
    if login(params[:username], params[:password])
      redirect_to root_url
    else
      @username = params[:username]
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url
  end
end
