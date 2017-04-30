class MoviesController < ApplicationController
  def new_form

  end
  def create_row
    movie = Movie.new
    movie.year = params[:year]
    movie.title = params[:title]
    movie.description = params[:description]
    movie.duration = params[:duration]
    movie.image_url = params[:image_url]
    movie.save

    redirect_to("/movies/")
    #how would i use render here and have it work properly
  end

  def index
    @movie = Movie.all
  end
  def show
    @movie = Movie.find(params[:id])
  end
  def edit_form
    @movie = Movie.find(params[:id])
  end
  def update_row
    movie = Movie.find(params[:id])
    movie.year = params[:year]
    movie.title = params[:title]
    movie.description = params[:description]
    movie.duration = params[:duration]
    movie.image_url = params[:image_url]
    movie.save
    redirect_to("/movies/#{params[:id]}")
  end
  def destroy_row
    movie = Movie.find(params[:id])
    movie.destroy
    redirect_to("/")
  end
end
