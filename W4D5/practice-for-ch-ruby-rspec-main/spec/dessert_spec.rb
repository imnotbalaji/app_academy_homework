require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  
  describe "#initialize" do
  
  dessert = Dessert.new("Cake",5,"Boyardi")
    it "sets a type" do 
      expect(dessert.type).to eq("Cake")
    end 

    it "sets a quantity" do 
      expect(dessert.quantity).to eq(5)
    end 
    it "starts ingredients as an empty array" do 
      expect(dessert.ingredients.empty?).to eq(true)

    end 

    it "raises an argument error when given a non-integer quantity" do 
      expect{Dessert.new("Cake","a","Boyardi")}.to raise_error(ArgumentError)
    end 
  end

  describe "#add_ingredient" do
    dessert = Dessert.new("Cake",5,"Boyardi")
    dessert.add_ingredient("Flour")
    it "adds an ingredient to the ingredients array" do 
      expect(dessert.ingredients.include?("Flour")).to eq(true) 
    end 

  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end