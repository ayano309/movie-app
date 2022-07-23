class MealsController < ApplicationController
  before_action :authenticate_user!
  def create
    @movie = Movie.find(params[:movie_id])
    @meal = current_user.meals.new(movie_id: @movie.id)
    @meal.save
    redirect_to request.referer
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @meal = current_user.meals.find_by(movie_id: @movie.id)
    @meal.destroy
    redirect_to request.referer
  end

  
end
