class School
  
  school = School.new("Bayside High School")
  school.roster
  
  school.add_student("Zach Morris", 9)
  school.roster
  
  school.add_student("AC Slater", 9)
  school.add_student("Kelly Kapowski", 10)
  school.add_student("Screech", 11)
  school.roster
  
  school.grade(9)
  
end

