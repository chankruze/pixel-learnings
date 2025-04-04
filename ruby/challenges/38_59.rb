=begin
Complete the method definition given below.

messages is an array of sentences. Given messages and a method extract_method, the method set_reminder should map extracted reminders to days of the week based on the message passed.

All the input sentences will be in lower case.
Create a hash with names of days as keys, and array of reminder strings as values.
Use the extract_method given as an input to extract the reminder text from the message passed.
You can call the method as follows extract_method.call(message)
Remove the day keyword from the message.(tomorrow, today, monday etc)
Go through the test cases, to get an idea of expected keywords.
Week starts at Sunday.
=end

def set_reminder(messages, extract_reminder_text)
  
end

messages = ["hey there can you remind me to buy groceries tomorrow", "hi, remind to take the medicine everyday"]

{"sunday"=>["Take the medicine"], "monday"=>["Take the medicine"], "tuesday"=>["Take the medicine"], "wednesday"=>["Take the medicine"], "thursday"=>["Buy groceries", "Take the medicine"], "friday"=>["Take the medicine"], "saturday"=>["Take the medicine"]}