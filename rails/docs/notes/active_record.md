### What is Active Record?

Active Record is sub-system of Rails that is responsible for representing business data, logic and the dealings with the database.

`ActiveRecord::Base` is a Rails class that contains several helper methods that facilitates the creation and management of objects from databases. This class encapsulates all the low-level stuff and helps us to deal with data as if they were plain Ruby objects.

The classes that inherit `ActiveRecord::Base` directly or indirectly are called "models". In other words, `model` is a simple Ruby class that is used to represent data in the database table.

Each `column` in the table corresponds to a field in the `model` and each `row` represents an instance of the `model`.

By convention, every `model` class inherits a common superclass defined by us named `ApplicationRecord`. We add configurations that are globally required for all models in our project inside the `ApplicationRecord` class. Also, `ActiveRecord::Base` will be the superclass of `ApplicationRecord`.

This inheritance enables us to use all methods defined in `ActiveRecord::Base` as well as `ApplicationRecord` in all our models.

### Naming conventions

Docs: [Naming Conventions](https://guides.rubyonrails.org/active_record_basics.html#naming-conventions)

By default, Active Record uses naming conventions to map between "models" and database tables. Rails pluralizes the class name for finding out the table it should be mapped with. i.e. class Book will be mapped to books table.

### Schema conventions

Docs: [Schema Conventions](https://guides.rubyonrails.org/active_record_basics.html#schema-conventions)

**Foreign keys**
The column holding foreign key should be named using the `singularized_table_name_id` format. In our case, it will be `user_id`. This helps Rails connect between the `Order` model and `User` model in an ORM way.

**Primary keys**
Primary keys are used to uniquely identify rows in a table. Primary keys will be unique as well as non-null in most database engines. Since they are automatically indexed, querying using primary keys is super-fast.

By default, Active Record will use an integer column named `id` as the table's primary key. This will be automatically created when using Active Record Migrations for creating tables.

**Special columns**
If the column name is `created_at` or `updated_at` then it has a special significance for Active Record.

Active Record will try to automatically populate created_at when that record is created. Similarly when a record is updated then Active Record will try to automatically update the updated_at column.

But this is not the case all the time. There are some cases like upsertion, where Active Record won't automatically populate a value for these special columns.

In such situations we can add a migration to add default values for these columns. For example:

```
class AddDefaultTimestampValuesOnTableName < ActiveRecord::Migration[7.1]
  def change
    change_column_default :table_name, :created_at, from: nil, to: -> { "CURRENT_TIMESTAMP" }
    change_column_default :table_name, :updated_at, from: nil, to: -> { "CURRENT_TIMESTAMP" }
  end
end
```
