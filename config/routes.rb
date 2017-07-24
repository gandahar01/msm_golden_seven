Rails.application.routes.draw do
  get("/", { :controller => "movies", :action => "index_directors" })

  # CREATE
  get("/directors/new_form", { :controller => "movies", :action => "new_form_directors" })
  get("/create_director", { :controller => "movies", :action => "create_drow" })
  
  get("/actors/new_form", { :controller => "movies", :action => "new_form_actors" })
  get("/create_actor", { :controller => "movies", :action => "create_arow" })
  
  get("/movies/new_form", { :controller => "movies", :action => "new_form_movies" })
  get("/create_movie", { :controller => "movies", :action => "create_mrow" })

  # READ
  get("/directors", { :controller => "movies", :action => "index_directors" })
  get("/directors/:an_id", { :controller => "movies", :action => "show_directors" })
  
  get("/actors", { :controller => "movies", :action => "index_actors" })
  get("/actors/:an_id", { :controller => "movies", :action => "show_actors" })
  get("/movies", { :controller => "movies", :action => "index_movies" })
  get("/movies/:an_id", { :controller => "movies", :action => "show_movies" })
  
  # UPDATE
  get("/directors/:some_id/edit_form", { :controller => "movies", :action => "edit_director" })
  get("/update_director/:the_id", { :controller => "movies", :action => "update_drow" })
  
  get("/actors/:some_id/edit_form", { :controller => "movies", :action => "edit_actor" })
  get("/update_actor/:the_id", { :controller => "movies", :action => "update_arow" })
  
  get("/movies/:some_id/edit_form", { :controller => "movies", :action => "edit_movie" })
  get("/update_movie/:the_id", { :controller => "movies", :action => "update_mrow" })

  # DELETE
  get("/delete_director/:director_toast_id", { :controller => "movies", :action => "director_destroy_row" })
  get("/delete_actor/:actor_toast_id", { :controller => "movies", :action => "actor_destroy_row" })
  get("/delete_movie/:movie_toast_id", { :controller => "movies", :action => "movie_destroy_row" })
 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
