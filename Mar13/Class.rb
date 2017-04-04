class Basic_class
    def say_hello
        puts @greeting
    end
    def say_goodbye
        puts "goodbye"
    end
    def set_greeting(new_greeting)
        @greeting = new_greeting
    end
    def initialize
        @greeting = "HI"
        puts "I'm in the initialize function"
    end
    
end

my_variable = Basic_class.new
my_variable.set_greeting "Hello."
my_variable.say_hello
my_variable.say_goodbye

my_var2 = Basic_class.new
my_var2.set_greeting "What's up"
my_var2.say_hello

my_var3 = Basic_class.new
my_var3.say_hello