class LikesController < ApplicationController

  def create
    @movie = Movie.find(params[:movie_id])
    @like = current_user.likes.new(movie_id: @movie.id)
    @like.save
    redirect_to request.referer
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @like = current_user.likes.find_by(movie_id: @movie.id)
    @like.destroy
    redirect_to request.referer
  end
end
