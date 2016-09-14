def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    students = []
    loop do
    puts "What is the student\'s name?"
    name = gets.chomp
    if name.empty? 
           break 
    end
    puts "What cohort are you on?"
    cohort = gets.chomp
    if cohort == ""
        cohort = "Unassigned"
    end
    puts "what are your hobbies?"
    hobbies = gets.chomp
    if hobbies == ""
        hobbies = "No Hobbies"
    end
    puts "What is your age?"
    age = gets.chomp
    if age == ""
        age = "Undisclosed"
    end

       students << {name: name, cohort: cohort, hobbies: hobbies, age: age}
       puts "Now we have #{students.count} students"
    end
       

    return students
end

def print_header
   puts "The students of Villains Academy".center(50)
   puts "-------------".center(50)
end

def print(students)
   students.each_with_index do |student, index|
     puts "#{index + 1}. #{student[:name]} on the #{student[:cohort]} Cohort. Age: #{student[:age]}. Hobbies: #{student[:hobbies]}.".center(50)
   end
end


def print_footer(students)
   puts "Overall, we have #{students.count} great students".center(50)
end


students = input_students    
print_header
print(students)
print_footer(students)