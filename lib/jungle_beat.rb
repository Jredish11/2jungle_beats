class JungleBeat
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end


  def append(data)
    data.split.each do |word|
      node = Node.new(word)
      if @list.head.nil?
        @list.head = node
      else
        current_node = @list.head
        current_node = current_node.next_node until current_node.next_node.nil?
        current_node.next_node = node
      end
    end
  end

  def count
    if @list.head.nil?
      0
    else
      count = 1
    current_node = @list.head
    until current_node.next_node.nil?
      current_node = current_node.next_node
      count += 1
    end
    count
   end
  end
end
  
  



    # new_node = Node.new(data)
    # data_array = new_node.data.split
    # if @list.head.nil?
    #   new_node.data = data_array.first
    # else
    #   current_node = Node.new(data.split[1])
    #   new_node.next_node = current_node
    #   last_node = Node.new(data.split[2])
    #   current_node.next_node = last_node
    #   until current_node.next_node.nil?
    #     current_node = current_node.next_node
    #   end
    # end
  

    # if @list.head.nil? 
    #   @list.head = Node.new(data)
    #   @list.head.data = list.head.data.split[0]  
    # else
    #   new_node = Node.new(data)
    #   current_node = @list.head
    #   require 'pry'; binding.pry
    #   while current_node.next_node != nil
    #     current_node = current_node.next_node
    #   end
    #   current_node.next_node = new_node
    #   new_node.data = data.split[1]
    # end
  #       current_node = @list.head
  #       until current_node.next_node.nil?
  #         current_node = current_node.next_node   
  #       end
  #       current_node.next_node = new_node  
  #   end
  # end

    
   
