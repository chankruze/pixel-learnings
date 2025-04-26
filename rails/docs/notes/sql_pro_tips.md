# 📋 Perfect Rails Database Setup Checklist (Production-grade)

### 1. **Add Foreign Keys for Every Important Association**

| Example                          | Good Practice                                 |
| :------------------------------- | :-------------------------------------------- |
| Posts belong to users?           | `add_foreign_key :posts, :users`              |
| Comments belong to posts?        | `add_foreign_key :comments, :posts`           |
| Likes belong to users and posts? | `add_foreign_key :likes, :users` and `:posts` |

✅ Always use **DB-level foreign keys**, not just Rails associations.

---

### 2. **Use `on_delete: :cascade` carefully**

| When to use                                                   | Why                                            |
| :------------------------------------------------------------ | :--------------------------------------------- |
| Child records should be auto-deleted with parent              | Example: delete User ➔ auto delete their Posts |
| Only if you really want auto-deletion without manual clean-up | Avoid accidental mass deletes if unsure        |

✅ Add cascade only where safe.

Example:

```ruby
t.references :user, foreign_key: { on_delete: :cascade }
```

---

### 3. **Always Add Indexes on Foreign Keys**

| Why                                 | Benefit                                  |
| :---------------------------------- | :--------------------------------------- |
| Speeds up JOIN queries massively    | Faster user.posts, post.comments loading |
| Required if you have large datasets | Performance boost                        |

✅ Example:

```ruby
add_index :posts, :user_id
```

(When you do `t.references :user`, Rails already auto-adds index for you!)

---

### 4. **Use Unique Indexes for Unique Data**

| Field                             | Unique Index Needed? |
| :-------------------------------- | :------------------- |
| Emails in users table             | ✅ Yes               |
| Slugs for blog posts              | ✅ Yes               |
| API tokens, authentication tokens | ✅ Yes               |

✅ Example:

```ruby
add_index :users, :email, unique: true
add_index :posts, :slug, unique: true
```

---

### 5. **Use NOT NULL Constraints**

| Why                                 | Example                                     |
| :---------------------------------- | :------------------------------------------ |
| DB should reject incomplete records | Prevent creating user without email or name |
| Make bugs obvious early             | Safer, cleaner data                         |

✅ Example:

```ruby
t.string :email, null: false
t.integer :user_id, null: false
```

---

### 6. **Default Values**

| Example                                        | Why                                            |
| :--------------------------------------------- | :--------------------------------------------- |
| `published` boolean on posts defaults to false | So posts are drafts until explicitly published |

✅ Example:

```ruby
t.boolean :published, default: false, null: false
```

✅ Always combine `default` and `null: false` for predictable behavior.

---

### 7. **Seed Initial Data (for Dev Environments)**

Use `db/seeds.rb` to insert:

| Example                        | Why                                |
| :----------------------------- | :--------------------------------- |
| A sample admin user            | Quick login                        |
| Sample posts, categories, tags | App looks alive during dev/testing |

✅ Example inside `db/seeds.rb`:

```ruby
Organization.create!(name: "Demo Org")
User.create!(email: "admin@example.com", password: "password", name: "Admin", organization: Organization.first)
```

---

### 8. **Lock Schema Version Correctly**

At the top of `schema.rb`, you should see:

```ruby
ActiveRecord::Schema[7.1].define(version: 20240426074000)
```

✅ It locks to the latest migration ID.

✅ Rails uses it to detect whether you are missing migrations.

---

### 9. **Add Database-Level Enums (optional)**

PostgreSQL supports real enums.

Example:

```ruby
create_enum :post_status, ["draft", "published", "archived"]
```

✅ Much stricter than Rails enum strings/symbols.

(Need `structure.sql` for this, not `schema.rb`.)

---

### 10. **Automate Constraints (Optional)**

For mission-critical apps:

- Add check constraints (example: price must be >= 0)
- Add database triggers (example: auto-timestamps)

Example in Rails 7:

```ruby
add_check_constraint :products, "price >= 0", name: "price_non_negative"
```

✅ Makes the database truly self-protecting.

---

## 📦 Final Cheat Sheet

| Task              | Best Practice                                |
| :---------------- | :------------------------------------------- |
| Foreign keys      | Always add them                              |
| Cascade delete    | Only where needed                            |
| Unique indexes    | Always on emails, tokens, slugs              |
| NOT NULL          | Default for important fields                 |
| Seeds             | Essential for dev setup                      |
| Check constraints | Useful for complex rules                     |
| Enums             | Use DB enums for stricter types (PostgreSQL) |

---

## 🚀 Bonus: What about your Project right now?

| Item                             | Status                              |
| :------------------------------- | :---------------------------------- |
| Foreign keys on users/posts/orgs | ✅ Correct                          |
| Cascade deletes where needed     | ✅ Good                             |
| Indexes on emails, auth tokens   | ✅ Good (you added)                 |
| Seeds (setup.rake task)          | ✅ Good start                       |
| Default values, constraints      | ✅ Could improve based on app needs |
