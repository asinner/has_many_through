class EnrollmentsController < ApplicationController
  def new
    @course = Course.find(params[:course_id])
    @enrollment = Enrollment.new
    @students = Student.all
  end

  def create
    @course = Course.find(params[:course_id])
    @enrollment = @course.enrollments.build(enrollment_params)
    @students = Student.all
    if @enrollment.save
      redirect_to @course, notice: 'Student successfully added'
    else
      render :new
    end
  end

  private

  def enrollment_params
    params.require(:enrollment).permit(:student_id)
  end
end
