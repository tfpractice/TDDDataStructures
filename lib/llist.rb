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
  end

  def insert(data, predecessor)
    newNode = Node.new(data)
    currNode = self.find(predecessor)
    newNode.next = currNode.next
    currNode.next=newNode
  end

end



class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil

  end



end
