class Person
  attr_accessor :name
  # def initialize(name)
  #   @name = name
    def greeting
      puts "Hello, my name is #{@name}!"

    end
  end


class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object."
  end
end

instructor = Instructor.new
instructor.name = "Chris"
student = Student.new
student.name = "Cristina"
instructor.greeting
student.greeting

instructor.teach

student.learn

student.teach #this will not work because Instructor is not a parent of Student so Student will not
# retain instructor methods
