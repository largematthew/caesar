
puts "Which phrase would you like to encrypt?"
phrase = gets.chomp
puts "How many times should we iterate each character? (enter a number)"
rotate = gets.chomp.to_i
myArray = Array.new
myArray = phrase.split("")
result = Array.new

myArray.each do |letter|
    x = letter.ord 
    case 
        when x >= 65 && x <= 90
            x += rotate
            if x > 90
                x -= 90
                x = 64 + x 
            end
            result.push(x.chr)
        when x >= 97 && x <= 122
            x += rotate
            if x > 122
                x -+ 122
                x = 96 + x
            end
            result.push(x.chr)
        else result.push(x.chr)
    end
end

cypher = result.join("")

puts "Your encrypted message is: " + cypher