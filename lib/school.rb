class School
attr_accessor :name, :roster

def initialize (name)
    @name = name
    @roster = { }
    
end

def add_student (student_name, grade)
    roster[grade] ||= [ ]
    roster[grade] << student_name
end

def grade (grade)
roster[grade]
end

def sort
    sorted_students = {}
roster.each do |key,value|
    sorted_students[key]=value.sort
    end
return sorted_students
end

end



#roster.sort.to_h
