require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Testing Student
alex = Student.new("Alex")
tommy = Student.new("Tommy")

#Testing Instructor
rick = Instructor.new("Rick")

#Testing BoatingTest
test1 = BoatingTest.new(alex,"No Wake Zone","failed",rick)

#Testing Methods
#Testing Student#add_boating_test
test2 = alex.add_boating_test("Don't Crash", "passed", rick)
test3 = tommy.add_boating_test("Power Steering","failed", rick)


#Testing Student#self.find_student
method_findstudent = Student.find_student("Alex")
method_findstudent2 = Student.find_student("Tommy")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

