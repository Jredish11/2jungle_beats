class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  

  def append(data)
   if @head.nil? 
      @head = Node.new(data)
      else
        new_node = Node.new(data)
        current_node = @head
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

  def to_string
    data_string = ""
    if @head.nil?
      data_string
    else
      data_string = @head.data
      current_node = @head
        until current_node.next_node.nil?
          current_node = current_node.next_node
          data_string = data_string + " " + current_node.data
        end
        data_string
    end
  end

  def prepend(data)
   front_node = Node.new(data)
   front_node.next_node = @head
   @head = front_node
  end
  
end