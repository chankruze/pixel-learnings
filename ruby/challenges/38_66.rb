=begin
Finish the method definition given below.

A group of people were asked to tell the name a latest Indian movie that they really loved.

survey_answers is an array of hashes, each of which has the keys name and favorite_indian_movie. The method should return an alphabetically sorted unique list of these movie names.
=end

def get_indian_movies(survey_answers)
  survey_answers.map { |survey| survey[:favorite_indian_movie] }.uniq.sort
end

survey_answers = [
  {
    name: "Arun",
    favorite_indian_movie: "Tumbaad",
  },
  {
    name: "Ali",
    favorite_indian_movie: "Kammatti Paadam",
  },
  {
    name: "Jocelyn",
    favorite_indian_movie: "Asuran",
  },
  {
    name: "Palmer",
    favorite_indian_movie: "Super Deluxe",
  },
]

puts get_indian_movies(survey_answers)
