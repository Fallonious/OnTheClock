class DevelopersController < ApplicationController
  before_action :check_logged_in

  def index
    @developers = Developer.all
  end

  def show
  end

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(developer_params)
  end

  def update
  end

  def destroy
  end

  def edit
  end

  private def check_logged_in
    redirect_to logins_path unless session[:developer_id]
  end

  private def developer_params
    params.require(:developer).permit(:name, :email, :password)
  end
end
