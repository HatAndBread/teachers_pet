class MyClassesController < ApplicationController
    def index
        @class_titles_and_ids = []
        @my_classes = MyClass.all
        @my_classes.each do |my_class|
            @class_titles_and_ids << {title: my_class.my_class_title, id: my_class.id}
        end
    end
    def new
        if params[:error]
            @error = params[:error]
        end
    end
    def create
        @my_class = MyClass.new(my_class_params)
        if @my_class.valid?
            @my_class.save
            redirect_to @my_class
        else
            redirect_to action: "new", error: @my_class.errors.messages
        end
    end
    def show
        @my_class = MyClass.find(params[:id])
        @error = params[:error]
        @student_list = @my_class.students.all
    end

    private

    def my_class_params
        params.require(:my_class).permit(:my_class_title)
    end
end
