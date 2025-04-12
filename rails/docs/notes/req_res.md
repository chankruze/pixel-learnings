Docs: https://courses.bigbinaryacademy.com/learn-rubyonrails/request-response-cycle-in-rails/

Once the correct controller and action are derived, then the controller is invoked using the dispatch method which is implemented in `ActionController::Metal` like this:

```ruby
controller_class.dispatch(action, request, response)
```

Inside the dispatch class method, the request and response objects are set so that they can be accessed from any method within the controller, and then the correct action is invoked using process(name).

Before the action is invoked however, numerous other things happen such as params are wrapped inside a hash and callbacks are invoked.

Action methods return a response using `render`.

```ruby

class TasksController < ApplicationController
  # respond_to :html, :xml, :json

  def index
    tasks = Task.all
    render status: :ok, json: { tasks: }
  end
end
```

Calling render returns a mutated response object, which is later converted into a Rack-compatible response array inside the dispatch method using `to_a`, and then returned.

Before leaving the controller, a bunch of things happen such as the `after_action` callbacks are run and flash messages are stored in the session. This return value then goes back to middlewares through routing. During this phase, middlewares can modify the status code, headers, and response body. Some of the response modifications done by middlewares are as follows:

1. The response body may be removed entirely, based on HTTP caching headers.
1. The session is committed, meaning that it is serialized and stored in a cookie.
1. Cookies are serialized, and added to the response headers.
   After all the middlewares are invoked, the response is returned from the app to the web server. There, it is serialized into a HTTP response string, and sent back to the client.
