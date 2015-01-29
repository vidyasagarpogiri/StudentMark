class StudentsController < ApplicationController
  
  def index
   @students = Student.all
  end
  
  def new
    @student = Student.new
  end
  
  def show
    @student = Student.find(params[:id])
  #raise @student.inspect
  end
  
  def create
  #raise params.inspect
    @student = Student.new(st_params)
    @student.save
    redirect_to students_path
  end
  
  def edit
  #raise params.inspect
    @student = Student.find(params[:id])
  end
  
  def update
  #raise params.inspect
    @student = Student.find(params[:id])
    @student.update(st_params)
    redirect_to students_path     
  end
  
  def destroy
  #raise params.inspect
    @student = Student.find(params[:id])
    @student.destroy
  #raise params.inspect
    redirect_to students_path
  end
  
  
  private
  
  def st_params
    #raise params.inspect
    params.require(:student).permit(:name, :branch, :year, :percentage)
  end
  
end
