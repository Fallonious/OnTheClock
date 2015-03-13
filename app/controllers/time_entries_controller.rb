class TimeEntriesController < ApplicationController
  before_action :check_logged_in
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @time_entries = TimeEntry.all
  end

  def show
  end

  def new
    @time_entry = TimeEntry.new
  end

  def create
    @time_entry = TimeEntry.new(time_entry_params)
    respond_to do |format|
      if @time_entry.save
        format.html { redirect_to @time_entry, notice: 'time entry was successfully created.' }
        format.json { render :show, status: :created, location: @time_entry }
      else
        format.html { render :new }
        format.json { render json: @time_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @time_entry.update(time_entry_params)
        format.html { redirect_to @time_entry, notice: 'Time entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @time_entry }
      else
        format.html { render :edit }
        format.json { render json: @time_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @time_entry.destroy
    respond_to do |format|
      format.html { redirect_to time_entries_url, notice: 'Time entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def edit
  end

  private def check_logged_in
    redirect_to logins_path unless session[:developer_id]
  end

  private def time_entry_params
    params.require(:time_entry).permit(:duration, :project_id, :developer_id, :worked_on)
  end

  private def set_time_entry
    @time_entry = TimeEntry.find_by_id(params[:id])
  end

end
