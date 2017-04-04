class Input_message
    attr_accessor :message
    attr_accessor :number

    def mess(prompt)
        prompt = puts "What is your message?"
        return
    end

    def number prompt
        prompt = 0
        prompt = prompt + 1
    end
    
end

new_message = Input_message.new
new_message.message = gets.chomp
puts "#{(new_message.mess).to_s}"

new_number = Input_message.new
puts "Your number is "




=begin
    def get_text prompt
        puts prompt
        return gets.chomp
    end

    def number prompt
        prompt = 0
        puts prompt
        while prompt < 10
           puts "What is your next message."
           message = gets.chomp
           prompt = prompt +1
           puts "Your new message is #{message} and your ID is #{prompt}"
        end

    end
end

ih = Input_message.new

some_text = ih.get_text("Hey, what is your message?")

some_number = ih.number("Your message is #{some_text} and your ID number is#{some_number}")

=end
