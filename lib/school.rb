require 'pry'

class School 
    attr_accessor :name, :roster

    def initialize (name)
    @name = name
    @roster = {}
end

def add_student (name, grade)
    if roster[grade].nil?
        roster[grade] = []
        roster[grade] << name
    else
        roster[grade] << name
    end
end

def grade (grade)
    roster[grade]
end

def sort
roster.each do |grade, student_array|
    sorted_students = student_array.sort
    roster[grade] = []
    roster[grade] = sorted_students
end
roster
end

end
