=begin
Finish the method definition below.

cart is an array of items, each of which is a hash with the keys "item" and "paymentStatus", a string representing the name of the item, and a boolean representing the payment status of the item. Given cart, the method should return true if atleast one item in the cart has paymentStatus as false, and false otherwise.
=end

def check_cart(cart)
  cart.any? { |item| item[:paymentStatus] == false }
end

cart = [
  {
    item: "Snacks",
    paymentStatus: false,
  },
  {
    item: "Pen",
    paymentStatus: false,
  },
  {
    item: "Books",
    paymentStatus: true,
  },
  {
    item: "Notepad",
    paymentStatus: true,
  },
];

puts check_cart(cart)
