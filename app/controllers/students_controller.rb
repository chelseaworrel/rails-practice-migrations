class StudentsController < ApplicationController
  def index #use index when dealing with a collection!!!!!!!
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id]).addresses
  end
  
end

# @students = Student.pluck(:name)

# Student.find(2).addresses.first.current_address
# hash params access value when the key is an id like so, (params[:id])
