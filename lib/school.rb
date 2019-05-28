class School
	def initialize(name)
		@name = name
		@roster = {}
	end

	attr_reader :roster

	def add_student(student, grade)
		if @roster[grade]
			@roster[grade] << student
		else
			@roster[grade] = [student]
		end
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		sortrost = {}
		keys = @roster.keys
		
		while (keys != [])
			min = keys.min
			keys.delete(min)
			sortrost[min] = @roster.fetch(min).sort
		end
		@roster = sortrost
	end
end