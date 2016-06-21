# let's put all the students into an array

students = [
  "Dr. Hannibal Lecter",  # makes it easier to add new names to the list,
  "Darth Vader",          # rather than "puts name" each time.
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
def print_header                            # extract the code into methods
  puts "The students of Villains academy"   # First, print the header
  puts "-------------"                      # Second, print the list of students
end                                         # Final, print the header
  # Note! we are now passing the students
  # variable to the methods as an argument
  # called "names". This is because, the
  # methods don't have access to the local
  # variables defined outside them.

def print(names)
names.each do |name|       # This code takes every name fromt the student array
  puts name                # and for each name it executes the block of code
  end                      # between the do and end. Each execution of this
end                        # code is called an interation. On every iteration,
                           # the current name will be assigned to the value
                           # student which was specified between the | |

# FIRST ITERATION
#     1) takes the first value from the array (Dr. Hannibal)
#     2) assigns it to the variable student
#     3) then executes the block of code (puts student) which print it to the screen

# SECOND AND MORE...
#     Will continue to iterate through each value(name) in the array.

def print_footer(names)
puts "Overall, we have #{names.count} great students"
end
# nothing happens until we call the methods >>
print_header
print(students)
print_footer(students)
