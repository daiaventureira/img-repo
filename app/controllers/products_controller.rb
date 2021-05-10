class ProductsController < ApplicationController 
   
    before_action :require_user_logged_in! 

    def index 
        @product = Product.all 
    end

    def show 
        @product = Product.find(params[:id])
    end

    def new 
        @product = Product.new 
    end
    
    def edit  
        @product = Product.find(params[:id])
    end

    def create
        @product = Product.new(product_params)
        if @product.save
            redirect_to '/products', notice:'Folder Created!'
        else
            render :new
        end 
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

    def update
        product = Product.find(params[:id])
          if product.update(product_update_params)
            if params[:product][:bulk].present?
                params[:product][:bulk].each do |image|
                product.bulk.attach(image)

              end
            end
            redirect_to '/products', notice:'Images(s) added'
          else
            render :new
          end
      end

    private 
    def product_update_params 
        params.require(:product).permit( :description)
    end
    def product_params 
        params.require(:product).permit(:description,  bulk: [])
    end

end
