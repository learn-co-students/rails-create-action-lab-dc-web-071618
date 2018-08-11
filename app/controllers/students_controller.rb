require "byebug"

class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @new_s = Student.new
    # byebug
    @new_s.first_name = params[:first_name]
    @new_s.last_name = params[:last_name]
    @new_s.save
    redirect_to student_path(@new_s)
  end

end
