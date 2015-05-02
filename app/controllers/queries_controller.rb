class QueriesController < ApplicationController
  def index
  end

  def show
    query = params[:id]
    if query == "1"
      query1
    elsif query == "2"
      query2
    elsif query == "3"
      query3
    elsif query == "4"
      query4
    elsif query == "5"
      query5
    elsif query == "6"
      query6
    end
  end
  
  def query1
    i = Instructor.find_by_name("Parvesh Biyani").course_offerings
    stu = []
    i.each do |x|
      x.enrollments.each do |y|
        stu << y.student.name
      end
    end
    @result = stu.to_s

  end
  def query2
    t = Timing.all.pluck(:id)
    f = CourseTiming.all.pluck(:timing_id)
    r = t-f
    x = []
    r.each do |k|
      x << Timing.find(k).to_s
    end
    @result = x
  end
  def query3
    x = CourseOffering.where("semester=? AND year=?","Monsoon", "2014")
    y = CourseOffering.where("semester=? AND year=?","Winter", "2015")
    res = []
    x.each do |x1|
      y.each do |y1|
        if x1.course == y1.course
          res << x1.course.to_s
        end
      end
    end
    @result = res.uniq
  end
  def query4
    y = CourseOffering.where("semester=? AND year=?","Winter", "2015")
    f = Hash.new(0)

    y.each do |x|
      x.instructors.each do |i|
        f[i.department.to_s] += 1
      end
    end
    @result = f
  end
  def query5
    y = CourseOffering.where("semester=? AND year=?","Winter", "2015")
    res = []
    y.each do |x|
      if x.course.credits == "2"
        x.enrollments.each do |stu|
          res << stu.student.to_s
        end
      end
    end
      @result = res
  end
   def query6
    @result = "Query6"
  end
end
