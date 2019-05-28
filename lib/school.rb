class School
    attr_reader :roster

    def initialize(roster)
        @roster = {}
    end


    def add_student(student_name, grade)
        if @roster[grade] != nil
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end

    def grade(grade)
        @roster.values_at(grade).flatten
    end

    def sort
        hash = {}
         @roster.each do |key, var|
            @roster[key] = var.sort
        # @roster.map do |key, var|
        #     @roster[key] = var.sort
        # why does this create an array
         end
    end
end
