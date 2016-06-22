def input_students
  puts 'Please enter the names of the students'
  puts 'To finish, just hit return twice'
  students = []
  name = gets.chomp

  until name.empty?
    students << { name: name, cohort: :november }
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts 'The students of my cohort at Makers Academy'
  puts '-------------'
end

def print(students)
  index = 0
  while students.length > index
    puts "#{students[index][:name]} (#{students[index][:cohort]} cohort)"
    index += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
students = input_students
print_header
print(students)
print_footer(students)
