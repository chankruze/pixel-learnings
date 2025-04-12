LRRB Docs: [https://courses.bigbinaryacademy.com/learn-rubyonrails/basics-of-ruby-on-rails-routing/](https://courses.bigbinaryacademy.com/learn-rubyonrails/basics-of-ruby-on-rails-routing/)

```ruby
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :tasks, only: :index

  root "home#index" # Root URL
  # This line sets the root route of the application to the index action of the HomeController.
  # Root URL determines what to respond when a user tries to load the home page of our application. In our case, it will be http://localhost:3000.

  # get "*" => "home#index"
  # The above code could be written like this also.
  get "*path", to: "home#index", via: :all # This line is a catch-all route.
  # It matches any GET request that doesn't match any other defined route and directs it to the index action of the HomeController. The *path is a wildcard that captures any path, and via: :all specifies that this route should respond to all HTTP methods, although it's typically used with get in this context. This is often used in single-page applications (SPAs) to handle client-side routing by always serving the same page, which then uses JavaScript to handle the actual routing.
end
```

### Building and organizing APIs

**Naming APIs**

[RESTful naming of routes](https://courses.bigbinaryacademy.com/learn-rubyonrails/restful-routes-in-ruby-on-rails/)

**Organizing APIs**

We will be creating all our API's in `app/javascript/src/apis` folder.

**Building an API**

1. Always try to name the API connector file aligned with the resource that the particular API will be interacting with. So if there is a registrations resource in our server, then we can name the file `apis/registrations.js`. But why plural? The reason is that there are two types of resources in Rails. Since registrations are mostly defined as `resources registrations`, we should name the file too using plural `registrations.js`. If the route defined in Rails was say resource profile, that is with singular resource, then we should name the file as `apis/profile.js`. If the resource name is in snake_case then make sure to use the same name in snake_case for API connector files in the frontend. For example, if the resource is resource :draft_order then the API connector file name should be `apis/draft_order.js`. Doing so makes it easier to search for the respective API connectors for a resource and vice-versa.

1. use Axios for making API calls.

1. The functions we define in the API file, should be resourceful. Which means the function names should adhere somewhat similar to the actions for a particular route. Eg: For registrations, let's say we have a create and destroy action. Then the functions we define in `apis/registrations.js` should be named `create` and `destroy`. If there are custom routes/member/collection, then you can update the name accordingly. But key point is to keep it resourceful.

1. If we need an API to interact with the `index` action, then prefix it/name it with the fetch keyword. This is a standard that we follow in BigBinary. The index action usually returns a list of items. Thus we use the `fetch` keyword to denote such a case. How's this useful? In a huge project, we just need to search with the fetch prefix to reach the functions which interact in some manner with the `index` action. Also if there is a need for a wrapper function say within your React component, which invokes these API's, then name it something like `fetchDetails`, `fetchItems`, `fetchData`, `fetchTasks` etc. Hopefully you get the general idea.

1. If there are more than one parameter in API actions(this is how we will term those API functions), then use named parameters. The reason is that, we don't need to follow an order for the params, when invoking the function. Also, if you need to send certain data to server, then encapsulate it within an object called `payload`. You will get a better idea when you start using these API's.

1. Once you create the functions/actions in API, you need to export them. So how to do it? Create a variable named as `resourceNameApi`, which is an object consisting of all the actions defined. Eg: `const registrationsApi = { create, destroy };`. Now we default export this variable only, like this: `export default registrationsApi`. This is done to enhance the intellisense. Now we can simply type in `registrationsApi`, and if your text editor is configured properly, then it will auto-import the API. Cool right?

1. When adding a new action, make sure you add it to `resourceNameApi` variable that we export from the API.
