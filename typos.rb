def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  loop do
  puts "Enter a students name"
  name = gets.chomp.capitalize
  #while the name is not empty, repeat this code
  if name.empty?
      break
  end
  #add the student hash to the array
  students << {name: name, cohort: :November}
  puts "Now we have #{students.count} students"
  end
  #return the array of students
  students
end


def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} on the #{student[:cohort]} cohort"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end


students = input_students
print_header
print(students)
print_footer(students)