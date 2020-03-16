class BoatingTest
    attr_accessor :test_status
    attr_reader :student, :test_name, :instructor
    @@all = []

    def initialize(student,test_name,test_status,instructor)
        @student = student
        @test_name = test_name
        @test_status = test_status
        @instructor = instructor
        @@all << self
    end

    def self.all
        @@all
    end

end


#   BoatingTest class:
# X -Should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# X -BoatingTest.all returns an array of all boating tests