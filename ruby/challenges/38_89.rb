=begin
def fruit_salad(fruits)
  fruits.map{ |fruit| slice_fruit(fruit) }.flatten.sort.join
end

def slice_fruit(fruit)
  mid = fruit.length / 2
  len = fruit.length
  [fruit.slice(0...mid), fruit.slice(mid...len)]
end
=end

def fruit_salad(fruits)
  fruits.map{ |fruit| slice_fruit(fruit) }.flatten.sort.join
end
  
def slice_fruit(fruit)
  mid = fruit.length / 2
  len = fruit.length
  [fruit.slice(0...mid), fruit.slice(mid...len)]
end