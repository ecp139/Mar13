class Point
    attr_accessor :x
    attr_accessor :y

    def distance(other_point)
        how_far = @x - other_point.x
        how_far = how_far.abs + (@y - other_point.y).abs
        return how_far
    end
end


ship1 = Point.new
ship1.x = gets.chomp.to_i
ship1.y = 10

ship2 = Point.new
ship2.x = 12
ship2.y = 10

puts "Your distance is #{(ship2.distance(ship1).to_s)} blocks."