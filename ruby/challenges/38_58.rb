=begin
Complete the method definition given below.

Given a string message as input, the method should return the reminder text.

Go through the test cases, to get an idea of expected keywords to parse, remove and keep. The output should be in sentence case (First letter of first word in capital).
=end

CONNECTING_WORDS = %w[me to about]

def extract_reminder_text(message)
  # Split the sentence after the remind keyword
  regex = /reminders|remind/i
  sentence_after_reminder_keyword = message.gsub(regex, '').strip

  puts sentence_after_reminder_keyword

  if sentence_after_reminder_keyword.include? "to"
    return sentence_after_reminder_keyword.split("to").last.strip.capitalize
  end

#   reminder_text = sentence_after_reminder_keyword.split.reject { |word| CONNECTING_WORDS.include?(word.downcase) }

#   reminder_text.join(" ").capitalize
end

input_values = [
    'Remind me when I get home to check the mail', 
    'I will call you back bye Hey remind me to call John back', 
    'Remind office party', 
    'Hey AI can you remind me to buy groceries', 
    "Set Remind Game Night at Joe's place", 
    'Hi there remind me about the meeting with Raj', 
    'Reminders send thank you card', 
    'Please remind me about the assignment'
]

expected_outputs = [
    "Check the mail",
    "Call john back",
    'Office party',
    "Buy groceries",
    "Game night at joe's place",
    "The meeting with raj",
    "Send thank you card",
    "The assignment"
]

input_values.each_with_index do |input, index|
  result = extract_reminder_text(input)
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