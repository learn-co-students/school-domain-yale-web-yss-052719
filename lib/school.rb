# code here!
class School
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end
    
    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster.keys.include?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(number)
        @roster[number]
    end

    def sort
        @roster.each do |grade, names|
            @roster[grade] = names.sort
        end
    end
end