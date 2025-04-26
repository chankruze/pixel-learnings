```ruby
class SayHello
  def self.from_the_class
    "Hello, from a class method"
  end

  def from_an_instance
    "Hello, from an instance method"
  end
end

>> SayHello.from_the_class
=> "Hello, from a class method"

>> SayHello.from_an_instance
=> undefined method `from_an_instance' for SayHello:Class

>> hello = SayHello.new
>> hello.from_an_instance
=> "Hello, from an instance method"

>> hello.from_the_class
=> undefined method `from_the_class' for #<SayHello:0x0000557920dac930>
```
