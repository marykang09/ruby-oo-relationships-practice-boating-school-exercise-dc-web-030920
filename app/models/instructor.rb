class Instructor
    attr_accessor :test_status
    attr_reader :name, :student, :test_name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student,test_name)
    #if a test exists for this student, update the status of the test to passed
    #if no test, create a test with the student and test name with status passed
    #first, check if student took this test, then change status
            students_test = BoatingTest.all.find do |test|
                test.student == student && test.test_name == test_name
                end

                if students_test
                    students_test.test_status = "passed"
                    students_test
                else
                    BoatingTest.new(student,test_name,"passed",self)
                end
     end


    def fail_student(student,test_name)
    #if a test exists for this student, udpate the status of the test to failed
    #if no test, create a test with status failed
        students_test = BoatingTest.all.find do |test|
            test.student == student && test.test_name == test_name
            end

            if students_test
                students_test.test_status = "failed"
                students_test
            else
                BoatingTest.new(student,test_name,"failed",self)
            end
    end
end

#    Instructor class:
# X -initialize with a name
# X -Instructor.all should return all instructors
# X -Instructor#pass_student should take in a student instance and test name. 
#    If there is a BoatingTest whose name and student match the values passed in, this method should 
#    update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with 
#    the student, that boat test name, and the status 'passed'. Either way, it should return the BoatingTest instance.
# X -Instructor#fail_student should take in a student instance and test name. 
#    Like #pass_student, it should try to find a matching BoatingTest and update its status to 'failed'. 
#    If it cannot find an existing BoatingTest, it should create one with the name, the matching student, and the status 'failed'.
