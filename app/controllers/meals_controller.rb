class MealsController < ApplicationController
  before_action :set_meal, only: %i[ show edit update destroy ]

  def index
    @meals = Meal.alphabetically
  end

  def show
  end

  def new
    @meal = Meal.new
  end

  def edit
  end

  def create
    @meal = Meal.new(meal_params)

    @meal.save!
    redirect_to @meal, notice: "Meal was successfully created."
  end

  def update
    @meal.update!(meal_params)
    redirect_to @meal, notice: "Meal was successfully updated."
  end

  def destroy
    @meal.destroy
    redirect_to meals_url, notice: "Meal was successfully destroyed."
  end

  private
    def set_meal
      @meal = Meal.find(params[:id])
    end

    def meal_params
      params.require(:meal).permit(:title)
    end
end
