Tasks from Rails to manage database:

```bash
➜  granite git:(main) bundle exec rails -T db
/home/chankruze/.rbenv/versions/3.3.5/lib/ruby/3.3.0/json/generic_object.rb:2: warning: /home/chankruze/.rbenv/versions/3.3.5/lib/ruby/3.3.0/ostruct.rb was loaded from the standard library, but will no longer be part of the default gems starting from Ruby 3.5.0.
You can add ostruct to your Gemfile or gemspec to silence this warning.
bin/rails db:create              # Create the database from DATABASE_URL or config/database.yml for the current RAI...
bin/rails db:drop                # Drop the database from DATABASE_URL or config/database.yml for the current RAILS...
bin/rails db:encryption:init     # Generate a set of keys for configuring Active Record encryption in a given envir...
bin/rails db:environment:set     # Set the environment value for the database
bin/rails db:fixtures:load       # Load fixtures into the current environment's database
bin/rails db:migrate             # Migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)
bin/rails db:migrate:down        # Run the "down" for a given migration VERSION
bin/rails db:migrate:redo        # Roll back the database one migration and re-migrate up (options: STEP=x, VERSION=x)
bin/rails db:migrate:status      # Display status of migrations
bin/rails db:migrate:up          # Run the "up" for a given migration VERSION
bin/rails db:prepare             # Run setup if database does not exist, or run migrations if it does
bin/rails db:reset               # Drop and recreate all databases from their schema for the current environment an...
bin/rails db:rollback            # Roll the schema back to the previous version (specify steps w/ STEP=n)
bin/rails db:schema:cache:clear  # Clear a db/schema_cache.yml file
bin/rails db:schema:cache:dump   # Create a db/schema_cache.yml file
bin/rails db:schema:dump         # Create a database schema file (either db/schema.rb or db/structure.sql, dependin...
bin/rails db:schema:load         # Load a database schema file (either db/schema.rb or db/structure.sql, depending ...
bin/rails db:seed                # Load the seed data from db/seeds.rb
bin/rails db:seed:replant        # Truncate tables of each database for current environment and load the seeds
bin/rails db:setup               # Create all databases, load all schemas, and initialize with the seed data (use d...
bin/rails db:version             # Retrieve the current schema version number
bin/rails test:db                # Reset the database and run `bin/rails test`
```

### count vs length vs size

So if you had noticed, in one of the iterations of our set_slug method, we had used size method like this count = Task.where("slug LIKE ?", "#{title_slug}%").size. But why exactly did we use it over count and length? It's pretty straightforward:

1. `count`: This method determines the number of elements with an SQL COUNT query. If you do not have anything loaded in the memory, use count to make a query on database.
1. `length`: This method simply loads the data of the association into the memory and then returns the number of elements loaded.
1. `size`: This method works as a combination of both the above mentioned methods i.e. if the collection has already been loaded in the memory, it will return the length same as calling length. If it has not been loaded yet, it is like calling count.

So in most cases size does the job.
