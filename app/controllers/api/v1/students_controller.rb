class Api::V1::StudentsController < ApplicationController

def index
  @students = Student.all
  render 'index.json.jbuilder'
end

def update
  @student = Stud

end
