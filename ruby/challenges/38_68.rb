=begin
Finish the method definition given below.

respondent_details is an array of hashes. Each hash has keys :name and :age and and a few variable number of keys, each a section name. :name and :age stores the name and age of the respondent, while the other keys store the number of questions the respondent answered against respective section.

Given respondent_details, the method should calculate the total number of questions answered by the respondents and store it in a key :total_count in each hash. The method should then return the updated array of hashes.
=end

def set_total_count(respondent_details)
  respondent_details.each do |respondent|
    total_count = respondent.reject { |key, _| key ==  :name || key == :age }.values.sum
    respondent[:total_count] = total_count
  end
  respondent_details
end

respondent_details = [
  {
    name: "Jacqueline",
    age: 25,
    html: 30,
    css: 11,
    javascript: 23,
    react: 21,
  },
  {
    name: "Dawson",
    age: 32,
    html: 30,
    css: 27,
    javascript: 15,
    ruby: 25,
  },
  {
    name: "Junior",
    age: 39,
    html: 30,
    css: 15,
    javascript: 19,
    ruby: 25,
    sql: 27,
    tailwindCSS: 15
  }
]

puts set_total_count(respondent_details)
