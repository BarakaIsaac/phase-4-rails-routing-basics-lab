class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end

    def grades
        students_list_grade = Student.order(grade: :desc)
        render json: students_list_grade
    end
end
