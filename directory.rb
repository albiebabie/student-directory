def input_students                                    # method "input_students"
  puts 'Please enter the names of the students'       # prints string to screen
  puts 'To finish, just hit return twice'             # prints string to screen

  students = [] # creates and empty array to store our future students
  name = gets.chomp # gets the first name inputted by user

  until name.empty? # until the name is empty, repeats this code
    students << { name: name, cohort: :november } # add student hash to the array
    puts "Now we have #{students.count} students" # print string inc interpolation

    name = gets.chomp # get another name from the user
  end
  students # return the array of students
end

def print_header # method called "print_header"
  puts 'The students of Villains academy' # prints string to screen
  puts '-------------' # prints string to screen
end

def print(students) # method called "print" argument(students)
  students.each_with_index do |student, tom| # iterate through each students and assign to block value "student"
  puts "#{tom+1}. #{student[:name]} (#{student[:cohort]} cohort)" # printing the string with interpolations
  end
end

def print_footer(students) # method "called print_footer" argument(students)
  puts "Overall, we have #{students.count} great students" # prints string with interpolation
end

students = input_students
# nothing happens until we call the methods>>
print_header
print(students)
print_footer(students)
