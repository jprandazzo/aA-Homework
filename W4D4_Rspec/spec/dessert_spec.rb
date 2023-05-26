require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:brownie) {Dessert.new("brownie",100,"chef")}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("brownie")
    end

    it "sets a quantity" do
      expect(brownie.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{ Dessert.new("brownie","a shitton","Boyardee") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(brownie.ingredients).to be_empty
      brownie.add_ingredient("xanax")
      expect(brownie.ingredients).to include("xanax")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      brownie.add_ingredient(%(milk sugar chocolate eggs xanax))
      brownie.mix!
      expect(brownie.ingredients).not_to eq(@orig)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
    brownie.eat(30)
    expect(brownie.quantity).to eq(70)
    end

    it "raises an error if the amount is greater than the quantity" do
    expect{brownie.eat(101)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(brownie.serve).to include("#{chef} the Great Baker")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      # before(brownie.quantity = 30)
      brownie.make_more
      expect(brownie.quantity).to eq(120)
    end
  end
end