class Node
  attr_accessor :next, :data
  def initialize(data)
    @next = nil
    @data = data
  end
end

class LinkedList
  attr_accessor :name
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    
  end

  def prepend(value)

  end

  def size

  end

  def head #returns the total number of nodes in the list

  end

  def tail #returns the first node in the list

  end

  def at(index) #returns the last node in the list

  end

  def pop #returns the node at the given index

  end

  def contains?(value) #returns true if the passed in value is in the list and otherwise returns false.

  end

  def find(value) #returns the index of the node containing value, or nil if not found.

  end

  def to_s #represent linked list as strings

  end

  def insert_at(value, index) #inserts new node of provided value at given index

  end

  def remove_at(index) #removes node at given index

  end

end
