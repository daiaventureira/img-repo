class DeleteNamePriceImageUrlFromProduct < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :name 
    remove_column :products, :price
    remove_column :products, :image_url
  end
end
