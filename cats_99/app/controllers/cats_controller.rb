class cat_controller < ApplicationController
    def index
        cats = Cat.all
        render json: cats
    end


end