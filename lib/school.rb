class School
    attr_accessor :name, :roster
    
    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name 
    end
    
    def grade(grade_level)
        roster[grade_level]
    end

    def sort
        alphabetical = {}
        roster.each do |grade, name|
            alphabetical[grade] = name.sort
        end
        alphabetical
    end

end