# School would be referred tp as a "model"
# a school should have [] for roster, contain grade_level, value = arr of names
# be able to add_student by giving an argument

class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end 
  end
end
