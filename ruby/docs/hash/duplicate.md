In Ruby, you can create a copy of a hash in several ways. Here are some common methods to create a new hash from an existing one:

### 1. Using `dup`

The `dup` method creates a shallow copy of the hash. This means that the new hash will have the same keys and values, but it will be a different object.

```ruby
original_hash = { a: 1, b: 2, c: 3 }
new_hash = original_hash.dup

puts new_hash.inspect  # Output: {:a=>1, :b=>2, :c=>3}
```

### 2. Using `clone`

The `clone` method also creates a shallow copy of the hash, similar to `dup`. However, `clone` also copies the frozen state of the object, if it is frozen.

```ruby
original_hash = { a: 1, b: 2, c: 3 }
new_hash = original_hash.clone

puts new_hash.inspect  # Output: {:a=>1, :b=>2, :c=>3}
```

### 3. Using `merge`

You can use the `merge` method to create a new hash by merging the original hash with an empty hash. This will also create a shallow copy.

```ruby
original_hash = { a: 1, b: 2, c: 3 }
new_hash = original_hash.merge({})

puts new_hash.inspect  # Output: {:a=>1, :b=>2, :c=>3}
```

### 4. Using the `Hash[]` method

You can also create a new hash using the `Hash[]` method, which takes an array of key-value pairs.

```ruby
original_hash = { a: 1, b: 2, c: 3 }
new_hash = Hash[original_hash]

puts new_hash.inspect  # Output: {:a=>1, :b=>2, :c=>3}
```

### 5. Using the `to_h` method

If you have an enumerable, you can convert it to a hash using the `to_h` method.

```ruby
original_hash = { a: 1, b: 2, c: 3 }
new_hash = original_hash.to_h

puts new_hash.inspect  # Output: {:a=>1, :b=>2, :c=>3}
```

### Summary

All of these methods will create a new hash that is a copy of the original hash. If you need a deep copy (where nested objects are also copied), you would need to implement a custom method or use a library that supports deep cloning.
