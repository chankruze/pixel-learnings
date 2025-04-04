=begin
Finish the method definition below.

department_newsletter_list is a hash with department names as keys and an array of newsletter titles as values. Given department_newsletter_list and a list of department names department_names_list, the method should return an alphabetically sorted single dimensional array of newsletters of the given departments in the department_names_list.

If none of departments specified in department_names_list are present in department_newsletter_list, then the method should return false.
=end

def newsletter_list(department_newsletter_list, department_names_list)
  selected_newsletters = department_names_list.flat_map { |dept| department_newsletter_list[dept] || [] }
  return false if selected_newsletters.empty?
    
  selected_newsletters.sort
end
  
department_newsletter_list = {
  'Programming' => ['Ruby Weekly', 'JavaScript Times'],
  'QA' => ['Testing Daily', 'Bug Tracker'],
  'HR' => ['Employee Relations', 'Workplace Culture']
}
  
department_names_list = ['Programming', 'QA']
  
puts newsletter_list(department_newsletter_list, department_names_list)