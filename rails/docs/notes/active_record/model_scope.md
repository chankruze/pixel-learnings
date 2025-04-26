### Model Scopes

Scopes are custom queries and works very similar to a class method. Scopes are defined inside our Rails models using the scope method.

Every scope takes two arguments:

1. A name, which we can use to call this scope in our code.
1. A lambda function, which implements the query.

Let's see an example:

```ruby
class Fruit < ApplicationRecord
  scope :with_juice, -> { where("juice > 0") }
end
```

The value returned when calling a scope is the ActiveRecord::Relation object, which in turn helps us to avoid errors when our scope returns nothing.

We can also chain and combine scopes.

Let's see an example:

Fruit.with_juice.with_round_shape.first(3)

### Which one to prefer?

It's all about consistency. Scopes are usually used when the logic is very small or, for simple `where/order` clauses.

Class methods are used when it involves a bit more complexity, and when we need a finer grain of control over the execution of queries.

Let's take an example to see when to use `scope` method:

```ruby
def index
  @books = Book.where("LENGTH(title) > 20")
end
```

In the above code, there is an `index` controller action that wants to display books with titles longer than 20 characters.

The code is fine but it's not reusable yet.

Thus writing queries like these in controllers makes the code not reusable.

Let’s move this query into a scope:

```ruby
class Book
  scope :with_long_title, -> { where("LENGTH(title) > 20") }
end
```

Now our controller action looks like this:

```ruby
def index
  @books = Book.with_long_title
end
```

We could do the same thing using class methods:

```ruby
class Book
  def self.with_long_title
    where("LENGTH(title) > 0")
  end
end
```

As we can see from the above example, we did the same thing using a class methods.

Although this class method does the job, we usually give preference for `scope` for such simple queries.

The following is an example of where class methods come in handy:

```ruby
class Book < ActiveRecord::Base
  def self.by_audience(audience)
    if audience == "children"
      where("age < 13")
    else
      where("age >= 13")
    end
  end
end
```
