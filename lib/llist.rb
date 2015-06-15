class LList
  attr_reader :head

  def initialize
    @head = Node.new("head")
  end

  def find(item)
    currNode = @head
    while currNode.data != item
      currNode = currNode.next
    end
    return currNode
  end

  def insert(data, predecessor)
    newNode = Node.new(data)
    currNode = self.find(predecessor)
    newNode.next = currNode.next
    currNode.next=newNode
  end

  def findPredecessor(item)
    currNode = @head
    while ((currNode.next != nil)) && (currNode.next.data != item)
      currNode = currNode.next
    end
    return currNode
  end

  def remove(item)
    prevNode = self.findPredecessor(item)
    if prevNode.next != nil
      prevNode.next = prevNode.next.next

    end
  end
end



class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil

  end



end

myNode = Node.new("lol");
myNext = Node.new("nextNode");
myNode.next = myNext
puts myNode.next.data
