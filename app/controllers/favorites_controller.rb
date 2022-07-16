class FavoritesController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.find(params[:comment_id])
    @favorite = current_user.favorites.new(comment_id: @comment.id,movie_id: @movie.id)
    @favorite.save
    
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.find(params[:comment_id])
    @favorite = current_user.favorites.find_by(comment_id: @comment.id,movie_id: @movie.id)
    @favorite.destroy
    
  end
end
