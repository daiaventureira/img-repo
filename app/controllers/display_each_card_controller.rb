class DisplayEachCardController < ApplicationController 

    def index
        @product = Product.all
    end
    def new 
        @product = Product.new
    end

    def show 
        @product = Product.find(params[:id])
    end
end
