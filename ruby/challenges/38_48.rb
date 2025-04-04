=begin
Complete the method definition given below.

For research purposes, a team of doctors are looking to find the list of diseases that are prevalent in the cities that are affected with COVID-19.

locations is an array of hashes, each of which contains keys "id", "name" and "diseases". "diseases" is an array of strings which are the diseases affecting the location.

Given locations, the method should return a unique list of disease names that are prevalent in cities that are affected with COVID-19. The result should not contain "COVID-19".
=end

def other_diseases(locations)
  affected_cities = locations.filter { |location| location[:diseases].include?("COVID-19") }
  other_diseases = []

  affected_cities.each do |city|
    other_diseases << city[:diseases]
  end

  other_diseases.flatten!.uniq!
  other_diseases.delete("COVID-19")
  other_diseases
end

locations = [
  {
    id: 1,
    name: "Gotham",
    diseases: ['COVID-19', 'Disease-A', 'Disease-B']
  },
  {
    id: 2,
    name: "NeverLand",
    diseases: ['Disease-R', 'Disease-H', 'Disease-G']
  },
  {
    id: 3,
    name: "Asgard",
    diseases: ['Disease-L', 'COVID-19', 'Disease-B']
  }
]

puts other_diseases(locations)