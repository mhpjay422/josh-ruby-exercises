class Student
  attr_reader :grade
  def initialize()
    @grade = "C"
  end

  def study
    case @grade
    when "C"
      @grade = "B"
    when "B"
      @grade = "A"
    else
      return
    end
  end

  def slack_off
    case @grade
    when "A"
      @grade = "B"
    when "B"
      @grade = "C"
    when "C"
      @grade = "D"
    when "D"
      @grade = "F"
    else
      return
    end
  end
end