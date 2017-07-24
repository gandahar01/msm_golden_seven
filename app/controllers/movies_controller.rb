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

  def show
    @photo = Photo.find(params[:an_id])

    render("pic_templates/show.html.erb")
  end

  def edit_form
    @photo = Photo.find(params[:some_id])

    render("pic_templates/edit_form.html.erb")
  end

  def update_row
    p = Photo.find(params[:the_id])

    p.source = params[:the_source]
    p.caption = params[:the_caption]

    p.save

    redirect_to("/photos/#{p.id}")
  end

  def destroy_row
    p = Photo.find(params[:toast_id])

    p.destroy

    redirect_to("/photos")
  end
end