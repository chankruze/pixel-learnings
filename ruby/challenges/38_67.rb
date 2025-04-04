=begin
Finish the method definition given below.

respondent_details is an array of hashes. Each hash has a key :name and a few other fixed keys :html, :css and :javascript, each a section name. :name stores the name of the respondent, while the other keys store the number of questions the respondent answered against respective section.

Given respondent_details, the method should calculate the total number of questions answered by the respondents and store it in a key :total_count in each hash. The method should then return the updated array of hashes.
=end

def set_total_count(respondent_details)
    respondent_details.each do |respondent|
      total_count = respondent[:html] + respondent[:css] + respondent[:javascript]
      respondent[:total_count] = total_count
    end

    respondent_details
end

respondent_details = [
  {
    name: "Jacqueline",
    html: 30,
    css: 11,
    javascript: 23,
  },
  {
    name: "Dawson",
    html: 30,
    css: 27,
    javascript: 15,
  },
  {
    name: "Jocelyn",
    html: 30,
    css: 15,
    javascript: 19,
  },
]

puts set_total_count(respondent_details)