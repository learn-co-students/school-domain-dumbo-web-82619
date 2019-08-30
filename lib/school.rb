require 'pry'

class School
  attr_reader :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    roster.include?(grade) || roster[grade] = []
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, name_array| 
      roster[grade] = name_array.sort
    end
  end

end