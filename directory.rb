def input_students
  students = []
  name = 'Alan'

  until name.empty?
    puts 'Please enter the names of the student'
    name = gets.chomp.capitalize
    break if name.empty?
    puts 'Please enter your hobbies'
    hobbies = gets.chomp.capitalize
    puts 'Please enter your country of birth'
    country = gets.chomp.capitalize
    puts 'Please enter your height'
    height = gets.chomp

    puts 'To finish, just hit return twice'

    students << {name: name, cohort: :November, hobbies: hobbies, country: country, height: height}
    puts "Now we have #{students.count} students"

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
    puts "#{index + 1}. #{students[index][:name].center(10)} #{students[index][:cohort].to_s.center(15)} " +
          "#{students[index][:hobbies].center(15)} #{students[index][:country].center(15)} " +
          "#{students[index][:height].center(15)}"
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
