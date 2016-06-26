@months = ['January', 'February', 'March', 'April', 'May', 'June', 'July',
           'August', 'September', 'October', 'November', 'December']
@students = [] # empty array that can be accessed by all methods

def load_students
  file = File.open('students.csv', 'r')
  file.readlines.each do |line|
    name, cohort = line.chomp.split(', ')
    @students << { name: name, cohort: cohort }
  end
  file.close
end

def save_students
  # open the file for writing
  file = File.open('students.csv', 'w') # taken the w out of the ''
  # iterate over the arry of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort], student[:hobbies],
                    student[:country], student[:height]]
    csv_line = student_data.join(',')
    file.puts csv_line
  end
  file.close
end

def input_students
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
    if cohort.empty? or !@months.include?(cohort)
      cohort = default
    end
    @students << { name: name, cohort: cohort, hobbies: hobbies,
                   country: country, height: height }
    if @students.count == 1
      puts 'Now we have 1 student.'
    else
      puts "Now we have #{@students.count} students."
    end
    puts 'If you\'re finished entering students, just hit return twice. Or...'
  end
  @students
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts '1. Input the students'
  puts '2. Show the students'
  puts '3. Save the list to students.csv'
  puts '4. Load the students from students.csv'
  puts '9. Exit'
end

def show_students
  print_header
  print_student_details
  print_footer
end

def process(selection)
  case selection
  when '1'
    input_students
  when '2'
    show_students
  when '3'
    save_students
  when '4'
    load_students
  when '9'
    exit
  else
    puts 'I don\'t know what you mean...'
    puts 'Please try again!'
  end
end

def print_header
  puts 'The students of Villains Academy:'
  puts '---------------------------------'
end

def print_student_details
  index = 0
  @students.each do |student|

    puts "#{index + 1}. #{@students[index][:name].center(10)} #{@students[index][:cohort].to_s.center(15)} "

    index += 1
  end
end

def print_by_cohort
  cohort_month = []
  if @students.empty?
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
  puts cohort.join(' ')
  end
end

def print_footer

  if @students.empty?
    puts 'There are no students in this cohort!'
  elsif @students.length == 1
    puts 'Overall, we have 1 great student'
  else
    puts "Overall, we have #{@students.count} great students"
  end
end

interactive_menu
