require 'queue'

describe "queue" do
  before(:example) do
    @myQueue = Queue.new
    @myQueue.enqueue(1)
    @myQueue.enqueue(3)
    @myQueue.enqueue(5)
    @myQueue.enqueue(7)
  end

  describe "attributes" do
    it "allows read/write access to :dataStore" do
      @initQueue = Queue.new
      expect(@initQueue.dataStore).to match_array([])
    end


  end

  describe "#enqueue" do
    it "appends an element to :dataStore" do
      expect { @myQueue.enqueue(9) }.to change{@myQueue.size}.from(4).to(5)

    end
  end

  describe "dequeue" do
    it "removes the first item from :dataStore" do
    	expect{@myQueue.dequeue}.to change{@myQueue.size}.from(4).to(3)

    end
  end

  describe "front" do
    it "return the value of the first element in :dataStore" do
    	expect(@myQueue.front).to eq(1)
    end
  end

  describe "back" do
    it "returns the last object in :dataStore" do
    	expect(@myQueue.back).to eq(7)
    end
  end

  describe "isEmpty" do
    it "reports whether or not :dataStore is empty" do
    	expect(@myQueue.isEmpty).to be_falsy
    end
  end
end
