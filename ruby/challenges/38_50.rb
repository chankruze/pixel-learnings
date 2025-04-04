=begin
Finish the method definition below.

vacation_details is a hash containing details of a vacation. Given vacation_details, and day and year as integer arguments, the method should add a start_date key in the hash with a date in the format of "Fri Dec 07 2018" as per the year and day inputs passed to it, and month as December. If the start_date key is already present in the hash, the method should not update it. The method should return the updated vacation_details.

Note: Try using Logical nullish assignment.
=end

def add_missing_property(vacation_details, day, year)
  vacation_details[:start_date] ||= Time.new(year, 11, day).strftime("%a %b %d %Y")
  vacation_details
end

vacation_details = {
  trip_id: 5,
  destination: 'Wayanad',
  start_date: 'Fri Dec 07 2018',
  hotel_phone_number: "030303",
  hotel_email: "hij789@example.com"
}
day = 9
year = 2020

puts add_missing_property(vacation_details, day, year)