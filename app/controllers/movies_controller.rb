class MoviesController < ApplicationController
  def new_form
    render("pic_templates/new_form.html.erb")
  end

  def create_row
    p = Photo.new

    p.source = params[:the_source]
    p.caption = params[:the_caption]

    p.save

    redirect_to("/photos")
  end

  def index
    @list_of_photos = Photo.order(:created_at => :desc)

    render("pic_templates/index.html.erb")
  end
  
  def index_directors
    @list_of_directors = Director.order(:created_at => :desc)

    render("custom_templates/index_directors.html.erb")
  end

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