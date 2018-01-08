?y # => "y"
?n # => "n"

# Usecase:

case $stdin.getc.downcase
when ?y then puts "Processing.."
when ?n then puts "Abort!"
else puts "I don't understand."
end