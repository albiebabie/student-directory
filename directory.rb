$months = ['January', 'February', 'March',
           'April', 'May', 'June', 'July',
           'August', 'September', 'October',
           'November', 'December']

def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts '1. Input the Students'
    puts '2. Show the Students'
    puts '9. Exit'
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when '1'
     students = input_students
    when '2'
     print_header
     print_students(students)
     print_footer(students)
    when '9'
     exit
    else
     puts 'I don\t know what you mean, please try again!'
   # 4. repeat from step 1
    end
  end
end

def input_students

  students = []
  name = 'Alan'
  default = 'July'

  until name.empty?
    puts 'Please enter the name of a student'
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
    students << {name: name, cohort: cohort, hobbies: hobbies, country: country, height: height}
    if students.count == 1
      puts 'Now we have 1 student.'
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

def print_students(students)
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
    puts 'To sort students by Cohort'
    puts 'Enter a Month (no abbreviations)'
    month = gets.chomp.capitalize
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
    puts 'There are no students in this cohort!'
  elsif names.length == 1
    puts 'Overall, we have 1 great student'
  else
    puts "Overall, we have #{names.count} great students"
  end
end

interactive_menu
