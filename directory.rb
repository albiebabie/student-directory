$months = ['January', 'February', 'March',
          'April', 'May', 'June', 'July',
          'August', 'September', 'October',
          'November', 'December']
def input_students
  students = []
  name = 'Alan'
  default = 'July'
  until name.empty?
    puts 'Please enter the name of the student'
    name = gets.chomp.capitalize
    break if name.empty?
    puts 'Please enter your cohort (using full month)'
    cohort = gets.chomp.capitalize
    puts 'Please enter your hobbies'
    hobbies = gets.chomp.capitalize
    puts 'Please enter your country of birth'
    country = gets.chomp.capitalize
    puts 'Please enter your height'
    height = gets.chomp
    if cohort.empty? or !$months.include?(cohort)
      cohort = default
    end
    puts 'To finish, just hit return twice'
    students << {name: name, cohort: cohort, hobbies: hobbies, country: country, height: height}
    puts "Now we have #{students.count} students"
  end
    students
end
def print_header
  puts 'The students of my cohort at Makers Academy'
  puts '-------------------------------------------'
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
def print_by_cohort(students)
  cohort_month = []
  puts "Sort by specific cohort - Please Enter Full Month"
  month = gets.chomp.capitalize
  students.map do |student|
    if student[:cohort] == month
      cohort_month << [student[:name], student[:cohort], student[:hobbies], student[:country], student[:height]]
    end
  end
  puts "Cohort #{month}"
  puts "Students are: "
  cohort_month.each do |cohort|
  puts cohort.each { |details| details }.join(" ")
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
students = input_students
print_header
print(students)
print_footer(students)
print_by_cohort(students)
