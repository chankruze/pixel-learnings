=begin
Finish the method definition below.

countries is an array of country names sorted in descending order of land area. Strings i and j are indexes of the format 1st, 2nd, 3rd... etc. The method should return both the original array countries intact and an array new_list that contains ith largest to jth largest countries in the format below:

{
  new_list, countries
}
=end

def fetch_countries(countries, i, j)
  { new_list: [countries[i.to_i - 1], countries[j.to_i - 1]], countries: countries }
end

