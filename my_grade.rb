# Grade class is a comparable class that assigns a value to the initilized letter grade. 

class Grade 
  include Comparable
  attr_accessor :grade
  def initialize(grade = "C")
    @grade = grade
    @value = case @grade
    	when "A+" then 4.25
    	when "A" then 4
    	when "A-" then 3.75
    	when "B+" then 3.25
    	when "B" then 3
    	when "B-" then 2.75
    	when "C+" then 2.25
    	when "C" then 2
    	when "C-" then 1.75
    	when "D+" then 1.25
    	when "D" then 1
    	when "D-" then 0.75
    	when "F" then 0
    	else 0
    end

    def inspect
      @grade  
    end 
    
    def <=>(other)
      grade <=> other.grade
    end
  end
end
