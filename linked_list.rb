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
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next = new_node
      @tail = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      new_node.next = @head
      @head = new_node
    end
  end

  def traverse
    current_node = @head
    until current_node.nil?
      puts current_node.data
      current_node = current_node.next
    end
  end


  def size #returns the total number of nodes in the list
    current_node = @head
    count = []
    until current_node.nil?
      count << current_node.data
      current_node = current_node.next
    end
    puts "The size of this list is #{count.size}."
  end

  def head #returns the first node in the list
    puts "Head: #{@head}"
  end

  def tail #returns the last node in the list
    puts "Tail: #{@tail}"
  end

  def at(index) #returns the node at the given index
    current_node = @head
    count = 1
    until count == index
      if count.nil? || index.nil?
        break
      elsif count == index
        puts "#{current_node} is at index #{index}."
      else
        current_node = current_node.next
      end
    end
  end

  def pop 
    return nil if @head.nil?

    if @head == @tail
      popped_node = @head
      @head = nil
      @tail = nil
    else
      current_node = @head
      until current_node == @tail
        current_node = current_node.next
      end
      popped_node = @tail
      current_node.next = nil
      @tail = current_node
    end

    popped_node
  end

  def contains?(value)  #returns true if the passed in value is in the list and otherwise returns false.
    current_node = @head
    until current_node.nil?
      if current_node.data == value
        return true
        puts "#{value} is within this list!"
      else
        current_node = current_node.next
      end
    end
  end

  def find(value) #returns the index of the node containing value, or nil if not found.
    current_node = @head
    count = 1
    until current_node.nil?
      if current_node.data == value
        return true
        puts "#{value} is at node ##{count}!"
      elsif current_node == @tail && current_node.data != value
        return nil
      else
        count += 1
        current_node = current_node.next
      end
    end
  end

  def to_s #represent linked list as strings

  end

  def insert_at(value, index) #inserts new node of provided value at given index

  end

  def remove_at(index) #removes node at given index

  end

end
