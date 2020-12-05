class PagesController < ApplicationController
    def home
        @home = true
    end
    def about
        @user = 'Fred'
    end
    def sign_up
    end
    def manage
    end
end
