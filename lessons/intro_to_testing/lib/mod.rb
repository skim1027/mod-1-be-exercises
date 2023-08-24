class Mod
  attr_reader :name, :description, :students, :captalize_student_name
  def initialize(name, description)
    @name = name
    @description = description
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def captalize_student_name
    Student.new.name.capitalize
  end
end