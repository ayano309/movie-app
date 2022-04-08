class MoviesController < ApplicationController
  before_action :authenticate_user!

  def index
    @movies = current_user.movies

  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = current_user.movies.build
  end

  def create
    @movie =current_user.movies.build(movie_params)
    if @movie.save
      redirect_to movie_path(@movie), notice: 'successfully created'
    else
      render :new
    end
  end

  def edit
    @movie = current_user.movies.find(params[:id])
  end

  def update
    @movie = current_user.movies.find(params[:id])
    if @movie.update(movie_params)
      redirect_to movie_path(@movie), notice: 'successfully updated'
    else
      render :edit
    end
  end

  def destroy
    movie = current_user.movies.find(params[:id])
    movie.destroy!
    redirect_to movies_path, notice: 'successfully Deleted'
  end

  private

  def movie_params
    params.require(:movie).permit(:date, :title, :appearance, :director, :body, :image)
  end
end
