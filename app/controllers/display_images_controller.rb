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

    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to "/products"
    end 

    def delete_image 
        attachment = ActiveStorage::Attachment.find(params[:id])
        attachment.purge
        redirect_to "/products" 
    end 
end
