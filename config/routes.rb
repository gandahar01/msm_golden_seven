Rails.application.routes.draw do
  get("/", { :controller => "movies", :action => "index_directors" })

  # CREATE
  #get("/photos/new", { :controller => "pictures", :action => "new_form" })
  #get("/create_photo", { :controller => "pictures", :action => "create_row" })
  get("/directors/new_form", { :controller => "movies", :action => "new_form_directors" })
  get("/create_director", { :controller => "movies", :action => "create_drow" })

  # READ
  get("/directors", { :controller => "movies", :action => "index_directors" })
  get("/directors/:an_id", { :controller => "movies", :action => "show_directors" })
  #get("/actors", { :controller => "movies", :action => "index_actors" })
  #get("/movies", { :controller => "movies", :action => "index_movies" })
  
  
  #get("/photos/:an_id", { :controller => "pictures", :action => "show" })

  # UPDATE
  #get("/photos/:some_id/edit", { :controller => "pictures", :action => "edit_form" })
  #get("/update_photo/:the_id", { :controller => "pictures", :action => "update_row" })
  get("/directors/:some_id/edit_form", { :controller => "movies", :action => "edit_director" })
  get("/update_director/:the_id", { :controller => "movies", :action => "update_drow" })

  # DELETE
  get("/delete_director/:director_toast_id", { :controller => "movies", :action => "director_destroy_row" })
  #get("/delete_actor/:actor_toast_id", { :controller => "movies", :action => "actor_destroy_row" })
  #get("/delete_movie/:movie_toast_id", { :controller => "movies", :action => "movie_destroy_row" })
 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
