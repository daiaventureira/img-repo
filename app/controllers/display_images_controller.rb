class DisplayImagesController < ApplicationController 

    def index
        @product = Product.all
    end
    def new 
        @product = Product.new
    end

    def show 
        @product = Product.find(params[:id])
    end

    def delete
        @product = Product.find_by(params[:id])
    end 
end
