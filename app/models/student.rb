class Student
    attr_accessor :test_status
    attr_reader :first_name, :student, :test_name, :instructor
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name,test_status,instructor)
    #initialize new test
        BoatingTest.new(self,test_name,test_status,instructor)
    end

    def self.find_student(first_name)
    #return the student with that name
        self.all.select{|student|student.first_name == first_name}
    end

    def grade_percentage
    #return the percentage of tests that the student has passed as a Float
        passing_tests = BoatingTest.all.select do |tests|
            tests.student == self
            end.select do |tests|
                tests.test_status == "passed"
            end.count
        
        all_tests = BoatingTest.all.select do |tests|
            tests.student == self
            end.count

        ((passing_tests / all_tests)*100).round(2)      
    end


end

#    Student class:
# X -Should initialize with first_name
# X -Student.all should return all of the student instances
# X -Student#add_boating_test should initialize a new boating test 
#    with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# X -Student.find_student will take in a first name and output the student (Object) with that name
# X -Student#grade_percentage should return the percentage of tests that the student has passed
#    a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)