# code here!
require "pry"

class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster.keys.include?(grade) == false
        roster[grade] = []
        roster[grade] << name
        else
            roster[grade] << name
        end
    end

    def grade(num)
        return @roster[num]
    end

    def sort        
        @roster.map do |grade, names| 
            @roster[grade] = names.sort
        end
        @roster
    end
    
end