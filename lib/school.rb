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
  new_student_array = []
  hash = {}
  roster.each do |grade, student_names|
    new_student_array << student_names.sort
  hash[grade] << new_student_array
  end
  hash
end

end
