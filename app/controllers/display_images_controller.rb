class DisplayImagesController < ApplicationController 
    before_action :require_user_logged_in! 

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
