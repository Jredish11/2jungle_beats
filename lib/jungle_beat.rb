class JungleBeat
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    if @list.head.nil? 
      @list.head = Node.new(data)
      @list.head.data = list.head.data.split[0] 
    else
        new_node = Node.new(data)
        current_node = @list.head
        until current_node.next_node.nil?
          current_node = current_node.next_node   
        end
        current_node.next_node = new_node  
    end
  end

    
   
end