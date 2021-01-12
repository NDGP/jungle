class Admin::DashboardController < ApplicationController
  

  def show
    @product_count = Product.all.length.to_s
    @category_count = Category.all.length.to_s
  end
end
