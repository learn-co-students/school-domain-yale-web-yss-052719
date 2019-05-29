# code here!
class School
    attr_reader :school_name, :roster
    attr_accessor :student, :grade


    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student, grade)
        if roster.keys.include?(grade)
            self.roster[grade] << student
        else
            self.roster[grade] = []
            self.roster[grade] << student
        end
    end

    def grade(grade)
        return self.roster[grade]
    end

    def sort
        new_roster = {}
        roster.keys.sort.each do |grade|
            new_roster[grade] = self.roster[grade].sort
        end
        return new_roster
    end
        


end