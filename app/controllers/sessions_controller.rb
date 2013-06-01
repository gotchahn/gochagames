class SessionsController < ApplicationController

  skip_before_filter :authenticate

  def new
    if session[:user_id].present?
      redirect_to root_path
    end
  end

  def create
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to external_login_path
  end
end
