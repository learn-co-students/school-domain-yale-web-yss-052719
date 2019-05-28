class School
    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def roster
        @roster
    end

    def add_student(student_name, grade)    
        if roster.include?(grade) 
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end

    def grade(grade)
        return_value = @roster[grade]
    end

    def sort
        @roster.each do |key, value|
            @roster[key] = value.sort
        end
    end
end