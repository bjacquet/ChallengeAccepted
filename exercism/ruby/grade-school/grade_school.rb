class School
  def initialize
    @students = {}
  end

  def students(grade)
    @students[grade] || []
  end

  def add(name, grade)
    @students[grade] = (students(grade) << name).sort
  end

  def students_by_grade
    @students.sort.map do |grade, students|
      { grade: grade, students: students }
    end
  end
end
