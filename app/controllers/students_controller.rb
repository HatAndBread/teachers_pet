class StudentsController < ApplicationController
    def create
        @my_class = MyClass.find(params[:my_class_id])
        @student = @my_class.students.create(student_params)
        redirect_to @my_class
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :birthday)
    end
end
