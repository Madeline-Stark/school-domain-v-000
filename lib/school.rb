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
  roster.collect do |grade, student_name|
    "#{roster[grade]}=>"
      student_name.sort do |a, b|
        a <=> b
      end
  end
  end

end
