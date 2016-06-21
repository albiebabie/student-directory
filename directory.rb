# let's put all the students into an array
# makes it easier to add new names to the list,
# rather than "puts name" each time.
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
# and then print them out
puts "The students of Villains academy"
puts "-------------"

students.each do |student| # This code takes every name fromt the student array
  puts student             # and for each name it executes the block of code
end                        # between the do and end. Each execution of this
                           # code is called an interation. On every iteration,
                           # the current name will be assigned to the value
                           # student which was specified between the | |

# FIRST ITERATION
#     1) takes the first value from the array (Dr. Hannibal)
#     2) assigns it to the variable student
#     3) then executes the block of code (puts student) which print it to the screen
# SECOND AND MORE...
#     Will continue to iterate through each value(name) in the array.

# finally. we print the total number of students
puts "Overall, we have #{students.count} great students"
