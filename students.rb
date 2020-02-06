require 'byebug'

class Student
  attr_accessor :scores

  def initialize(scores)
    @scores = scores
  end

  def average
    @scores.sum(0.0) / @scores.size
  end
end

def best_of(students)
  students.map { |student| student.scores.max }.max
end

def student_scores(student)
  student.scores
end

# student_1 = Student.new([5,6,7,8])

Array.new(4) { rand(1..10) }

students = []

10.times do |i|
  # Method that generates an array of 4 filled with random numbers
  rand_scores = Array.new(4) { rand(1..10) }
  students << Student.new(rand_scores)
end

puts best_of(students)

puts student_scores(students[0])