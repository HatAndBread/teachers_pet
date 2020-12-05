class StudentsController < ApplicationController
    def create
        @my_class = MyClass.find(params[:my_class_id])
        @student = @my_class.students.create(student_params)
        if @student.valid?
            redirect_to controller: "my_classes", action: "show", id: @my_class.id
        else
            puts "THESE ARE THE ERRRRS"
            p @student.errors.messages
            redirect_to controller: "my_classes", action: "show", id: @my_class.id, error: @student.errors.messages
            #redirect_to @my_class, error: @student.errors.messages
        end
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :birthday)
    end
end
