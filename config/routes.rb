Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  # A visitor can see the list of all restaurants.
  # GET "restaurants"
  # She/He can add a new restaurant, and be redirected to the show view of that new restaurant.
  # GET "restaurants/new"
  # POST "restaurants"
  # She/He can see the details of a restaurant, with all the reviews related to the restaurant.
  # GET "restaurants/38"
  resources :restaurants, only: %i[index show new create] do
    # She/He can add a new review to a restaurant
    # GET "restaurants/38/reviews/new"
    # POST "restaurants/38/reviews"
    # And that's it!
    resources :reviews, only: %i[new create]
  end
end
