def marks_in_range(marks, upper_limit, lower_limit)
  marks.select do | _, mark |
    (lower_limit..upper_limit).include?(mark)
  end
end

marks = {
  Danny: 76,
  Glover: 44,
  Phoebe: 89
}
lower_limit = 50
upper_limit = 80

puts marks_in_range(marks, upper_limit, lower_limit)