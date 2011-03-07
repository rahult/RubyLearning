program = ""
input = ""
line = ""
until line.strip == "q"
  print("?- ")
  line = gets
  case line.strip
  when ''
    puts("Evaluating...")
    eval(input)
    program += input
    input = ""
  when '|'
    puts "Program Listing..."
    puts program
  else
    input += line
  end
end
