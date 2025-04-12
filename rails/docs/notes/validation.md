Both `validates` and `validate` are used to enforce different types of validations on the `slug` attribute of a model. Here's a breakdown of what each line does:

### `validates :slug, uniqueness: true`

- **Purpose:** This line uses the `validates` method to ensure that the `slug` attribute is unique across all records in the database.
- **Functionality:** It leverages Rails' built-in `uniqueness` validation helper to automatically check that no two records have the same `slug` value. This is typically enforced at the database level as well, often with a unique index.
- **Example Use Case:** This is useful for ensuring that URLs or identifiers remain unique, such as in a blog where each post has a unique slug.

### `validate :slug_not_changed`

- **Purpose:** This line uses the `validate` method to call a custom validation method named `slug_not_changed`.
- **Functionality:** The `slug_not_changed` method is a custom method that you would define in the model to enforce specific validation logic. In this case, it likely checks that the `slug` attribute has not been changed after the record has been created.
- **Example Implementation:**

  ```ruby
  class YourModel < ApplicationRecord
    validates :slug, uniqueness: true
    validate :slug_not_changed

    private

    def slug_not_changed
      if slug_changed? && self.persisted?
        errors.add(:slug, "cannot be changed once set")
      end
    end
  end
  ```

  - **Explanation:** In this example, the `slug_not_changed` method checks if the `slug` has changed (`slug_changed?`) and if the record is already persisted in the database (`self.persisted?`). If both conditions are true, it adds an error to the `slug` attribute, preventing the record from being saved.

### Key Points

- **`validates`** is used for standard, attribute-level validations using Rails' built-in helpers.
- **`validate`** is used to invoke custom validation logic that you define in a separate method.
- **Combination:** Using both `validates` and `validate` allows you to enforce both standard and custom validation rules, ensuring data integrity and adherence to business rules.

By combining these two types of validations, you can ensure that the `slug` is both unique and immutable after creation, which is a common requirement for identifiers that are exposed in URLs or other public interfaces.

### Boolean value validation

```ruby
VALID_BLOGGABLE_VALUES = [true, false].freeze

# This is
validates :is_bloggable, inclusion: { in: VALID_BLOGGABLE_VALUES }, presence: true

# Same as
validates_inclusion_of :is_bloggable, in: VALID_BLOGGABLE_VALUES
```

### Data validations

**Front-end validations**

1. Basic input checks, such as checking that a required field has been filled out or that a number is within a certain range
1. Format checks, such as validating the format of an email address or phone number

**ORM level validations**

1. All front-end validations should be replicated at the ORM level
1. Validating the presence of a required field
1. Validating the length of a string field
1. Validating that a number is within a certain range

**Database level validations**

1. Setting unique constraints on fields
1. Setting foreign key constraints
1. Setting check constraints
1. Setting complex business-logic-orientated validations depending on time-based requirements
