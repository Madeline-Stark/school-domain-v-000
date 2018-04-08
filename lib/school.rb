require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    unless roster.include?(grade)
      roster[grade] = []
    end
    roster[grade] << student_name
  end

  def grade(year)
    roster[year]
  end

def sort
  roster.each do |grade|
    new_student_array = []
    new_grade_array = []
    new_hash = []
    new_grade_array <<
      grade.sort do |a, b|
        a <=> b
      end
    grade.each do |student_name|
    new_student_array <<
      student_name.sort do |a, b|
        a <=> b
      end
    end
  "grade => new_student_array"
  end
  end
end
