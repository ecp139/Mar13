class Message
    attr_accessor :text
    attr_accessor :number
    attr_accessor :storage
    def some_text
            @number = 0
            @storage = []
         while @number < 9
             puts "Do you want to (s)ave a message or (r)etrieve another message or (e)xit?"
             new_answer = gets.chomp.downcase()
            if new_answer == "e"
                 puts "Thank you."
                 break
            end
            if new_answer == "s"
                 puts "What is your message?"
                 @storage << gets.chomp
                 puts "Your message is #{@storage[@number]} and your number is #{@number}"  
                 @number = @number + 1
             end
             if new_answer == "r"
                puts "What message do you want to retrieve?"
                id = gets.chomp.to_i
                if id > @number
                    puts "That is not a valid message number."
                    return
                end
                puts "Your message is: #{@storage[id]}"
             end
         end         
    end 
end

class Message_faker

 def initialize
        @inputs = []
        @inputs << "s"
        @inputs << "Sup"
        @inputs << "s"
        @inputs << "Hello"
        @inputs << "r"
        @inputs << "0"
        @inputs << "r"
        @inputs << "1"
        @inputs << "e"
 end
    attr_accessor :text
    attr_accessor :number
    attr_accessor :storage
    def some_text
            @number = 0
            @storage = []
         while @number < 9
             puts "Do you want to (s)ave a message or (r)etrieve another message or (e)xit?"
             new_answer = get_next_input
            if new_answer == "e"
                 puts "Thank you."
                 break
            end
            if new_answer == "s"
                 puts "What is your message?"
                 @storage << get_next_input
                 puts "Your message is #{@storage[@number]} and your number is #{@number}"  
                 @number = @number + 1
             end
             if new_answer == "r"
                puts "What message do you want to retrieve?"
                id = get_next_input.to_i
                if id > @number
                    puts "That is not a valid message number."
                    return
                end
                puts "Your message is: #{@storage[id]}"
             end
         end
     end
    private
		def get_next_input
			next_input = @inputs.shift
			puts "> #{next_input}"
			return next_input
		end
             
 end
    