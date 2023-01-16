class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        ordered = Student.all.order(grade: :desc)
        render json: ordered
    end

    def highest_grade
        ordered = Student.all.order(grade: :desc)
        render json: ordered.first
    end

end
