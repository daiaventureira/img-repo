class ProductsController < ApplicationController 
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
            redirect_to '/products', notice:'Product created to Cart'
        else
            render :new
        end 
    end 
    def delete
        @product = Product.find_by(params[:id])

    end 

    def update
        product = Product.find(params[:id])
          if product.update(product_update_params)
            if params[:product][:bulk].present?
                params[:product][:bulk].each do |image|
                product.bulk.attach(image)
              end
            end
            redirect_to '/products', notice:'Product added'
          else
            render :new
          end
      end

    private 
    def product_update_params 
        params.require(:product).permit(:name, :image_url, :price, :description, :avatar)
    end
    def product_params 
        params.require(:product).permit(:name, :image_url, :price, :description, :avatar, bulk: [])
    end

end
