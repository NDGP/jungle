require 'rails_helper'
require 'app/controllers/admin/products_controller.rb'
# require './app/controllers/admin/catagories_controller.rb'

RSpec.describe Product, type: :model do



  before do
    @category = Category.new(:name => bob)
    @product = Product.new(:name => "Pro duct", :description => "very good duct", :category_id => 1, :quantity => 3, :price => 5 )
    @category.submit
    @product.submit
  end

  describe 'Validations' do
    it "should have a name" do
      expect(@product.name).to be_a(String)
    end
    it "should have a price" do
      expect(@product.price).to be_a(Numeric)
    end

    it "should have a quantity" do
      expect(@product.quantity).to be_a(Numeric)
    end

    it "should have a category" do
      expect(@product.category).to be_a(Numeric)
    end
  end


end
