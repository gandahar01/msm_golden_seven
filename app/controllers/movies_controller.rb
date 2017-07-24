class MoviesController < ApplicationController

# Directors START 
  def new_form_directors
    render("custom_templates/new_form_directors.html.erb")
  end

  def create_drow
    p = Director.new

    p.name = params[:the_name]
    p.bio = params[:the_bio]
    p.dob = params[:the_dob]
    p.image_url = params[:the_image_url]
    
    p.save

    redirect_to("/directors")
  end
  
  def update_drow
    p = Director.find(params[:the_id])

    p.name = params[:the_name]
    p.bio = params[:the_bio]
    p.dob = params[:the_dob]
    p.image_url = params[:the_image_url]
    p.save
    redirect_to("/directors/#{p.id}")
  end
  
  def index_directors
    @list_of_directors = Director.order(:created_at => :desc)
    render("custom_templates/index_directors.html.erb")
  end
  
  def show_directors
    @directore = Director.find(params[:an_id])
    render("custom_templates/show_directors.html.erb")
  end
  
  def director_destroy_row
    p = Director.find(params[:director_toast_id])
    p.destroy
    redirect_to("/directors")
  end
  
  def edit_director
    @directore = Director.find(params[:some_id])
    render("custom_templates/edit_form.html.erb")
  end

# Directors END

# Actors START 
  def new_form_actors
    render("custom_templates/new_form_actors.html.erb")
  end

  def create_arow
    p = Actor.new

    p.name = params[:the_name]
    p.bio = params[:the_bio]
    p.dob = params[:the_dob]
    p.image_url = params[:the_image_url]
    
    p.save

    redirect_to("/actors")
  end
  
  def update_arow
    p = Actor.find(params[:the_id])

    p.name = params[:the_name]
    p.bio = params[:the_bio]
    p.dob = params[:the_dob]
    p.image_url = params[:the_image_url]
    p.save
    redirect_to("/actors/#{p.id}")
  end
  
  def index_actors
    @list_of_actors = Actor.order(:created_at => :desc)
    render("custom_templates/index_actors.html.erb")
  end
  
  def show_actors
    @actore = Actor.find(params[:an_id])
    render("custom_templates/show_actors.html.erb")
  end
  
  def actor_destroy_row
    p = Actor.find(params[:actor_toast_id])
    p.destroy
    redirect_to("/actors")
  end
  
  def edit_actor
    @actore = Actor.find(params[:some_id])
    render("custom_templates/edit_form_actor.html.erb")
  end

# Actors END

# Movies START 
  def new_form_movies
    render("custom_templates/new_form_movies.html.erb")
  end

  def create_mrow
    p = Movie.new

    p.title = params[:the_title]
    p.year = params[:the_year]
    p.duration = params[:the_duration]
    p.description = params[:the_description]
    p.image_url = params[:the_image_url]
    
    p.save

    redirect_to("/movies")
  end
  
  def update_mrow
    p = Movie.find(params[:the_id])

    p.title = params[:the_title]
    p.year = params[:the_year]
    p.duration = params[:the_duration]
    p.description = params[:the_description]
    p.image_url = params[:the_image_url]
    p.save
    redirect_to("/movies/#{p.id}")
  end
  
  def index_movies
    @list_of_movies = Movie.order(:created_at => :desc)
    render("custom_templates/index_movies.html.erb")
  end
  
  def show_movies
    @moviee = Movie.find(params[:an_id])
    render("custom_templates/show_movies.html.erb")
  end
  
  def movie_destroy_row
    p = Movie.find(params[:movie_toast_id])
    p.destroy
    redirect_to("/movies")
  end
  
  def edit_movie
    @moviee = Movie.find(params[:some_id])
    render("custom_templates/edit_form_movie.html.erb")
  end

# Movies END
 
end