class MoviesController < ApplicationController
  # def index
  #   if params[:query].present?
  #     sql_query = " \
  #       movies.title @@ :query \
  #       OR movies.syllabus @@ :query \
  #       OR directors.first_name @@ :query \
  #       OR directors.last_name @@ :query \
  #     "
  #     @movies = Movie.joins(:director).where(sql_query, query: "%#{params[:query]}%")
  #   else
  #     @movies = Movie.all
  #   end
  # end

  # pg_search
  # def index
  #   if params[:query].present?
  #     @movies = Movie.pg_search(params[:query])
  #   else
  #     @movies = Movie.all
  #   end
  # end

  # elastic search
  def index
    if params[:query].present?
      @movies = Movie.search(params[:query])
    else
      @movies = Movie.all
    end
  end
end

# SELECT * FROM movies
# JOIN directors ON director.id = movies.director_id
# WHERE directors.last_name = 'Nolan'
