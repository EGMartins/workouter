class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show]

  def index
    
  end

  def new
    @exercise = current_user.exercises.new
  end

  def show
    
  end

  def create
    @exercise = current_user.exercises.new(exercise_params)
    if @exercise.save
      flash[:notice] = 'Exercise has been created'
      redirect_to [current_user, @exercise]
    else
      flash[:alert] = 'Exercise has not been created!'
      redirect_to new_user_exercise_path
    end
  end


  private

  def exercise_params
    params.require(:exercise).permit(:duration_in_min, :workout, :workout_date, :user_id)
  end

  def set_exercise
    @exercise = current_user.exercises.find(params[:id])
  end
end
