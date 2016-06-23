$months = ['January', 'February', 'March',
           'April', 'May', 'June', 'July',
           'August', 'September', 'October',
           'November', 'December']

def input_students

  students = []
  name = 'Alan'
  default = 'July'

  until name.empty?
    puts 'Please enter the name of a student'
    name = gets.gsub(/\n/,'').capitalize
    break if name.empty?
    puts 'Please enter your cohort (using full month)'
    cohort = gets.gsub(/\n/,'').capitalize
    puts 'Please enter your hobbies'
    hobbies = gets.gsub(/\n/,'').capitalize
    puts 'Please enter your country of birth'
    country = gets.gsub(/\n/,'').capitalize
    puts 'Please enter your height'
    height = gets.gsub(/\n/,'')
    if cohort.empty? or !$months.include?(cohort)
      cohort = default
    end
    students << {name: name, cohort: cohort, hobbies: hobbies, country: country, height: height}
    if students.count == 1
      puts "Now we have 1 student."
    else
      puts "Now we have #{students.count} students."
    end
    puts 'To finish, just hit return twice. Or...'
  end
    students
end

def print_header
  puts 'The students of my cohort at Makers Academy:'
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
  if students.empty?
    exit
  else
    puts "To sort students by Cohort"
    puts "Enter a Month (no abbreviations)"
    month = gets.gsub(/\n/,'').capitalize
    students.map do |student|
      if student[:cohort] == month
        cohort_month << [student[:name], student[:hobbies], student[:country], student[:height]]
      end
    end
  end
  puts "Students in #{month} Cohort:"
  cohort_month.each do |cohort|
  puts cohort.each { |details| details }.join(" ")
  end
end

def print_footer(names)
  if names.empty?
    puts "There are no students in this cohort!"
  elsif names.length == 1
    puts "Overall, we have 1 great student"
  else
    puts "Overall, we have #{names.count} great students"
  end
end

students = input_students
print_header
print(students)
print_footer(students)
print_by_cohort(students)
