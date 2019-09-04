# perguntar como metaprogramar o application controller

# TODOS

##The applicaton layout can include a Bootstrap navbar with links to the list of restaurants and to the restaurant creation form.

## Forms can be placed in a partial to make your HTML more readable.

##Improve your app
Once you have finished the first version of your resto-review app, try to improve it by embedding your review form inside each restaurant's show view. This means your new routing will look like this:

    GET "restaurants"
    GET "restaurants/new"
    GET "restaurants/38"
    POST "restaurants"
    POST "restaurants/38/reviews"

Notice that we got rid of the route GET "restaurants/38/reviews/new".
This is because the review form is now embedded in the restaurants/show.html.erb view. 🛏
