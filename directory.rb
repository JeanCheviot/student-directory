@students = []

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end 

def process(selection)
  case selection
  when "1"
    students = input_students
  when "2"
    show_students
  when "3"
    save_students
  when "9"
    exit
  else 
  puts "I don't know what you meant, try again."
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    students = []
    
    while true
        puts "What is the students name?"
        name = gets.delete "\n"
    if name.empty?
        break 
    end
        puts "What cohort are you on?"
        cohort = gets.chomp.capitalize
    if cohort == ""
        cohort = "Undisclosed Cohort"
    end
        puts "What country are you from?"
        country = gets.chomp.capitalize
    if country == ""
        country = "Undisclosed Country"
    end
        puts "What is your age?"
        age = gets.chomp
    if age == ""
        age = "Undisclosed Age"
    end
    
    
    puts "Is this information correct? (Y/N) \nName: #{name.capitalize} \nCohort: #{cohort} \nCountry: #{country} \nAge: #{age}"
        answer = gets.chomp.upcase
    if answer == 'N'
    break
    else
    @students << {name: name.capitalize.to_sym, cohort: cohort.to_sym, country: country.to_sym, age: age.to_sym}
    end
    end
    if @students.count == 1
        puts "We now have #{students.count} student"
    elsif @students.count > 1
        puts "Now we have #{students.count} students"
    end
    
    students
end
    

def print_header
   puts "The students of Jeremy Bowers School for Murder".center(150)
   puts "-------------".center(150)
end


def print_students_list
   @students.each_with_index do |student, index|
     puts "#{index + 1}. #{student[:name]} is on the #{student[:cohort]} Cohort. Age: #{student[:age]}. Country: #{student[:country]}.".center(150)
       end

end


def print_footer
        if @students.count == 1
            puts "Overall, we have #{@students.count} student.".center(150)
            puts ""
        elsif @students.count > 1
            puts "Overall, we have #{@students.count} students.".center(150)
            puts ""
        else
            puts "We have no students! :(".center(150)
        end
end

interactive_menu

