require './lib/mod'
require 'rspec'
require './lib/student'

RSpec.describe Mod do

  describe '#initialize' do
    it 'is an instance of a mod' do
      mod_1 = Mod.new('Mod 1', 'Intro To OOP') 
      expect(mod_1).to be_instance_of(Mod)
    end

    it 'has a mod name' do
      mod_1 = Mod.new('Mod 1', 'Intro To OOP') 
      expect(mod_1.name).to eq('Mod 1')
    end

    it 'has a mod description' do
      mod_1 = Mod.new('Mod 1', 'Intro To OOP') 
      expect(mod_1.description).to eq('Intro To OOP')
    end

    it 'has an empty students' do
      mod_1 = Mod.new('Mod 1', 'Intro To OOP')
      expect(mod_1.students).to eq([])
    end
  end

  describe '#add_students' do
    it 'can add students' do
      mod_1 = Mod.new('Mod 1', 'Intro To OOP')
      chris = Student.new('chRIs')
      richard = Student.new('RiCHard')
      meg = Student.new('meG')
      mod_1.add_student(chris)
      mod_1.add_student(richard)
      mod_1.add_student(meg)

      expect(mod_1.students).to eq([chris, richard, meg])
    end
  end

  describe '#captalize_student_name' do
    it 'capitalize students name' do
      mod_1 = Mod.new('Mod 1', 'Intro To OOP')
      chris = Student.new('chRIs')
      richard = Student.new('RiCHard')
      meg = Student.new('meG')
    

      expect(mod_1.captalize_student_name).to eq(['Chris','Richard','Meg'])

    end
  end

end