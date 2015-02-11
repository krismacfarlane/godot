class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    movie = Movie.create(movie_params)
    redirect_to movie_path(movie)
  end

  def destroy
    Movie.destroy(params[:id])
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    movie = Movie.find(params[:id])
    movie.update(movie_params)
    redirect_to movie_path(movie)
  end

  def test

  end

  def movie_params
    params.require(:movie).permit(:purchase_price, :rental_price, :available_on, :description, :rating, :poster_image, :length, :title)
  end
end
