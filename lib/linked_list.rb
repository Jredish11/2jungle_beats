class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      head_node = Node.new(data)
      @head = head_node
    else
      new_node = Node.new(data)
      @head = current_node
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def count
    count = 0
   if @head.nil?
    0
   else
    current_node = @head
    until current_node.nil?
      current_node = current_node.next_node
      count += 1
    end
    count
   end
  end

  
end