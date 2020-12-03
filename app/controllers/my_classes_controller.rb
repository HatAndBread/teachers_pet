class MyClassesController < ApplicationController
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
            puts @my_class.errors.messages
            redirect_to action: "new", error: @my_class.errors.messages
        end
    end
    def show
        @my_class = MyClass.find(params[:id])
    end

    private

    def my_class_params
        params.require(:my_class).permit(:my_class_title)
    end
end
