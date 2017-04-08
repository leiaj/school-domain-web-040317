require 'pry'

class School

attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(student_name)
    grade = @roster[student_name]
  end

  def sort
    @roster.each { |k, v| @roster[k] = v.sort }  
end

  school = School.new("TPS")
  school.add_student("Leia", 4)
  school.roster
  binding.pry
end
