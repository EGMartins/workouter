class ExercisesController < ApplicationController
  def index
    
  end

  def new
    @exercise = current_user.exercise.new()
  end
end
