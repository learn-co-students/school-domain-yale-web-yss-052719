# code here!

class School
    attr_reader :roster


    def initialize(roster) 
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] =[]
            @roster[grade] << name
        elsif
            @roster[grade] << name
        end
    end

    def grade(arg)
        return@roster[arg]
    end

    def sort
        nhash = {}
        @roster.map do |key, arr|
            nhash[key] = arr.sort
        end
        nhash
        # @roster.sort_by {|key, val| key}.to_h
        #while loop to put all keys in new hash; find min key add then delete
        #fetch (function that give you the key's value from hash)
        #sort

    end

end