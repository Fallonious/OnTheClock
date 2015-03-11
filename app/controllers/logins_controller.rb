class LoginsController < ApplicationController


  def new
  end

  def create
    developer = Developer.find_by_email(params[:email])
    if developer && developer.authenticate(params[:password])
      session[:developer_id] = developer.id
      flash[:notice] = "Welcome!"
      redirect_to developers_path
    else
      flash.now[:notice] = "Please re-enter credentials"
      render :new
    end
  end

  def destroy
    session[:developer_id] = nil
    redirect_to login_path
  end
end
