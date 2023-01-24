class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end

  # def index
  #   student = Student.where(first_name: params[:first_name] || last_name: params[:last_name])
  #   render json: student
  # end

end
