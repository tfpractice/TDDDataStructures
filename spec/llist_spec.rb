require "llist"


describe "llist" do
  before(:example) do
    @myList = LList.new()
    @myList.insert(3, "head")
    @myList.insert(5, 3)
    @myList.insert(7, 5)
  end

  describe "#find" do
    it "returns the node containing the requested data" do
    	expect(@myList.find(3).data).to be(3)
    end
  end

  describe "#insert" do
    it "adds an item to the list after a specified node" do
    	@myList.insert(9, 7)
    	expect(@myList.find(7).next.data).to be(9)
    end
  end

  describe "findPredecessor" do
    it "finds an item preceding node" do

    	tmpNode = @myList.find(5)
    	expect(@myList.findPredecessor(5).data).to be(3)
    end
  end

  describe "remove" do
    it "removes an item from list and replaces by rearraging links" do
    	
    	tmpNode = @myList.find(7)
    	@myList.remove(5)
    	expect(@myList.findPredecessor(7).data).to eq(3)
    end
  end
end