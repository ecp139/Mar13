# session 3 input helper
class Input_helper
    def get_text prompt
        puts prompt
        return gets.chomp
    end
    def get_number prompt
        puts prompt
        answer = gets.chomp
        # could replace the two lines above with this line: answer = get_tex(prompt)
        # if they typed antyhing that wasn't a number, ask them again and again until they have only typed numbers.'
        while answer.match(/\D/)
            puts "Please type numbers only.  Try again."
            answer = gets.chomp
        end
        return answer.to_i
    end
end

class Input_faker
    def get_text prompt
        puts prompt 
        return get_next_line
    end

    def get_number prompt
        puts prompt
        return get_next_line.to_i
    end
    def initialize
        @inputs = []
        @inputs << "John"
        @inputs << "37"
    end
    

    private
        def get_next_line
            next_input = @inputs.shift
            puts "> #{next_input}"
            return next_input
        end
 end
    

ih = Input_faker.new

some_text = ih.get_text("Hey, what is your name?")
puts some_text

some_number = ih.get_number("Hey how old are you?")
puts some_number


