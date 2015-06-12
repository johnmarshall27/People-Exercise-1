
class Rover
  attr_reader :x, :y, :direction

  def initialize(x, y, direction, width = 10, height =10)
    @x, @y, @direction = x, y, direction
    @width, @height = width, height

  def move
    case @direction
      when "N"
        @y += 1
      when "S"
        @y -= 1
      when "E"
        @x += 1
      when "W"
        @x -= 1
    end
  end

  def turn_left
    case @direction
      when "N"
        @direction = "W"
      when "S"
        @direction = "E"
      when "E"
        @direction = "N"
      when "W"
        @direction = "S"
    end
  end

  def turn_right
    case @direction
      when "N"
        @direction = "E"
      when "S"
        @direction = "W"
      when "E"
        @direction = "S"
      when "W"
        @direction = "N"
    end
  end

  def read_instruction(letter)
    case letter
      when "M"
        move
      when "L"
        turn_left
      when "R"
        turn_right

      puts self
    end

    def to_s
      "The Rover john is at #{x}, #{y}, and is facing #{direction}!"
    end

    end
  end


john = Rover.new(1, 1, "N", 10, 10)

input = "RMLMRLLLMRLLRLRMLLRLLRLRMMMRMMMRRMMLMMMLRLRLLMMMRRMRMMRMRMRRRLLLL"
input.each_char do |x|
  john.read_instruction(x)
end


end


