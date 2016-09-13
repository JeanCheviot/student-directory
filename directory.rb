def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    students = []
    name = gets.chomp
    while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
    end
    return students
end

def print_header
    puts "The students of Misunderstood Heartthrobs Academy"
    puts "----------------"
end

def print(students)
    students.each_with_index { |student, index| 
    index = index + 1
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)" }
end

def print_footer(students)
    puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)