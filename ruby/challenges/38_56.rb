=begin
Finish the method definition below.

employee_details_at_joining is a hash that contains details of an employee.

Given employee_details_at_joining, the method should calculate a new hash updated_employee_details that contains the same data as employee_details_at_joining but with the following changes:

1. a new key age should be added, calculated from year_of_birth key.
2. the experience value should incremented by 1 if it exists, otherwise a new key experience with value 1 should be added to the hash.

Ensure that the key age is added to the object before experience in case the experience key is absent in the initial hash employee_details_at_joining.

{
  employee_details_at_joining, updated_employee_details
}
=end

def update_employee_details(employee_details_at_joining)
  updated_employee_details = Hash[employee_details_at_joining]
  updated_employee_details[:age] = Time.new.year - employee_details_at_joining[:year_of_birth] - 1
  updated_employee_details[:experience] = employee_details_at_joining.key?(:experience) ? employee_details_at_joining[:experience] + 1 : 1
  
  { employee_details_at_joining: , updated_employee_details: }
end

input_values = [{
  user_id: 1,
  full_name: 'Hercule Poirot',
  first_name: "Hercule",
  last_name: "Poirot",
  experience: 2,
  year_of_birth: 1990,
  phone_number: "203203",
  email: "whitehaven.mansions@example.com"
},
{
  user_id: 2,
  full_name: 'John Doe',
  first_name: "John",
  last_name: "Doe",
  year_of_birth: 1995,
  phone_number: "010101",
  email: "nowhere@example.com"
}
]

expected_outputs = [{:employee_details_at_joining=>{:user_id=>1, :full_name=>"Hercule Poirot", :first_name=>"Hercule", :last_name=>"Poirot", :experience=>2, :year_of_birth=>1990, :phone_number=>"203203", :email=>"whitehaven.mansions@example.com"}, :updated_employee_details=>{:user_id=>1, :full_name=>"Hercule Poirot", :first_name=>"Hercule", :last_name=>"Poirot", :experience=>3, :year_of_birth=>1990, :phone_number=>"203203", :email=>"whitehaven.mansions@example.com", :age=>34}}, {:employee_details_at_joining=>{:user_id=>2, :full_name=>"John Doe", :first_name=>"John", :last_name=>"Doe", :year_of_birth=>1995, :phone_number=>"010101", :email=>"nowhere@example.com"}, :updated_employee_details=>{:user_id=>2, :full_name=>"John Doe", :first_name=>"John", :last_name=>"Doe", :year_of_birth=>1995, :phone_number=>"010101", :email=>"nowhere@example.com", :age=>29, :experience=>1}}]

input_values.each_with_index do |input, index|
    result = update_employee_details(input)
    expected = expected_outputs[index]
    
    if result == expected
      puts "✅ Test #{index + 1}: Passed"
    else
      puts "❌ Test #{index + 1}: Failed"
      puts "\nExpected Output\n#{expected}"
      puts "\nActual Output\n#{result}"
      puts ""
    end
  end
  