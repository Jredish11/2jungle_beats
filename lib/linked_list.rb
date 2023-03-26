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

  def insert(index, data)
   if index == 0
      prepend(data)
   else
    current_node = @head
    current_index = 1
      until current_index == index
        current_node = current_node.next_node
        current_index += 1
        end
        inserted_node = Node.new(data)
        inserted_node.next_node = current_node.next_node
        current_node.next_node = inserted_node
    end
  end

  def find(index, elements)
    beats_array = to_string.split[index, elements]
    beats_array.join(" ")
  end

  def includes?(element)
    beats_array = to_string.split
    beats_array.include?(element)
  end

  def pop
    if @head.nil? #if head is nil return nil
      nil
    elsif @head.next_node.nil? #if list isn't empty, checks if @head.next_node is nil, if there's only 1 node in list it sets @head = nil and returns data from node.
      pop_data = @head.data
      pop_data
    else
      current_node = @head
      until current_node.next_node.next_node.nil? #if theres more than one node in list, method traverses to the second-to-last node in the list by starting at @head and iterating through the nodes until the next_node of the current node is nil.  
        current_node = current_node.next_node   #current_node = 2nd to last node in list. once 2nd to last in list is found, method takes data from last node current_node = current_node.next_node. saves it to pop_data variable.
      end
      pop_data = current_node.next_node.data 
      current_node.next_node = nil #sets the next_node of the 2nd to last node to nil, removing it from the list
      pop_data #returns variable which contains data from the last node that was removed.
    end
  end




end