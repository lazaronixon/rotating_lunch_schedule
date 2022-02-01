class SchedulesController < ApplicationController
  before_action :set_schedule, only: %i[ show edit update destroy ]

  def index
    @schedules = Schedule.chronologically
  end

  def show
  end

  def new
    @schedule = Schedule.new
  end

  def edit
  end

  def create
    @schedule = Schedule.new(schedule_params)

    @schedule.save!
    redirect_to @schedule, notice: "Schedule was successfully created."
  end

  def update
    @schedule.update!(schedule_params)
    redirect_to @schedule, notice: "Schedule was successfully updated."
  end

  def destroy
    @schedule.destroy
    redirect_to schedules_url, notice: "Schedule was successfully destroyed."
  end

  private
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    def schedule_params
      params.require(:schedule).permit(:served_at, :meal_id)
    end
end
