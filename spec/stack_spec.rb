require "stack"
describe "stack" do
before(:example) do
   @myStack = Stack.new
      @myStack.push(3)
      @myStack.push(12)
      @myStack.push(5)
      @myStack.push(7)
     
end
  # describe "attributes" do
  #end
  describe "#push" do
    it "appends an item to :datastore" do
   
      expect(@myStack.size).to eq(4)
    end
  end
  describe "peek" do
    it"returns the last item in :datastore" do
      expect(@myStack.peek).to eq(7)
    end
  end
  describe "myPop" do
    it "removes the final item from list" do
      expect(@myStack.myPop).to eq(7)
    end
  end
  describe "myClear" do
    it "clears the :datastore" do
    
      @myStack.myClear	
      expect(@myStack.size).to eq(0)
    end
  end
end
