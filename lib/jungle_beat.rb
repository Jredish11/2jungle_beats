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

  def play 
    `say -r 300 #{@list.head.data} #{@list.head.next_node.data} #{@list.head.next_node.next_node.data} #{@list.head.next_node.next_node.next_node.data} #{@list.head.next_node.next_node.next_node.next_node.data} #{@list.head.next_node.next_node.next_node.next_node.next_node.data}`
  end
end
  
  



    
   
