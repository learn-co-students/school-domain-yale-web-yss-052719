class School
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(studentName,grade)
   if @roster[grade] == nil
    @roster[grade] = []
    @roster[grade] << studentName
  else
     @roster[grade] << studentName
   end
  end
  
  def grade(grade)
    @roster[grade]
  end
 
  def sort 
    sortedArray = {}
    @roster.map do |key, value|
      sortedArray[key] = 
      sortedArray[key] = @roster[key].sort
    end
    return sortedArray
  end
  
  
  


end