# Add the 2 requires you will need here
require './lib/mod'
require 'rspec'
require './lib/student'

describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      chris = Student.new('chRIs')
      expect(chris).to be_instance_of(Student)
      # write the code to initialize a new student object
    end
    
    # it 'capitalize students name' do
    #   chris = Student.new('chRIs')
    #   expect(chris.name).to eq('Chris')

    #   richard = Student.new('RiCHard')
    #   expect(richard.name).to eq('Richard')

    #   meg = Student.new('meG')
    #   expect(meg.name).to eq('Meg')

    # end
    # test it has a name
    # test it has cookies
    # test it can add cookies
  end
end
