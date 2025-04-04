=begin
Complete the method definition given below.

The find_type function should return the object type of the 2 parameters passed in the given format:

  {
      parameter_one_type: <type of parameter_one>,
      parameter_two_type: <type of parameter_two>
  }
=end

def find_type(parameter_one, parameter_two)
  {
    parameter_one_type: parameter_one.class,
    parameter_two_type: parameter_two.class,
  }
end