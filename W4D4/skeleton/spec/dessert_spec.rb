require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "David") }
  let(:brownie) { Dessert.new("brownie", 20, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("brownie")
    end

    it "sets a quantity" do
      expect(brownie.quantity).to eq(20)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("cake", "a lot", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      brownie.add_ingredient("cocoa")
      expect(brownie.ingredients).to include("cocoa")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["flour", "sugar", "salt", "egg", "cocao"]
      
      ingredients.each { |ingredient| brownie.add_ingredient(ingredient) }

      expect(brownie.ingredients).to eq(ingredients)
      brownie.mix!
      expect(brownie.ingredients).not_to eq(ingredients)
      expect(brownie.ingredients.sort).to eq(ingredients.sort) 
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(brownie.eat(10)).to eq(10)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { (brownie.eat(30)).to raise_error(ArgumentError) }
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef David the Great Baker")  
      expect(brownie.serve).to eq("Chef David the Great Baker has made 20 brownies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).with(brownie)
      brownie.make_more
    end
  end
end
