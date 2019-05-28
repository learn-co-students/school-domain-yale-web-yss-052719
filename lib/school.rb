class School
    def initialize(name, school_roster = {})
        @name = name
        @roster = school_roster
    end
    def roster 
        @roster
    end
    def add_student(student_name, grade)
        if !roster.keys.include?(grade)
            roster[grade] = []
        end
        roster[grade] << student_name
    end
    def grade(num)
        roster.each do |grade, students|
            if grade == num
                return students
            end
        end
    end
    def sort
        roster.map do |grade, students|
            roster[grade] = students.sort
        end
        return roster
    end
end