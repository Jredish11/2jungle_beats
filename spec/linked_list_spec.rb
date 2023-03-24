require './lib/node'
require "./lib/linked_list"
require 'rspec'

RSpec.describe LinkedList do
  it 'exists' do
    list = LinkedList.new

    expect(list).to be_an_instance_of LinkedList
  end

  it 'has a head of the linkedlist' do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  it 'append data to list' do
    list = LinkedList.new

    list.append("doop")
   
    
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
  end

  it 'counts the data in list' do
    list = LinkedList.new

    list.append("doop")
    expect(list.count).to eq(1)
  end

  
  it 'generates a string of all the elements in the list' do
    list = LinkedList.new

    list.append("doop")

    expect(list.to_string).to eq("doop")
  end
  
  
  it 'adds another node to list, can count nodes in list, return data as a string' do
    list = LinkedList.new

    expect(list.to_string).to eq("")

    list.append("doop")
    
    list.append("deep")
    
    expect(list.head.next_node.data).to eq("deep")
    
    


    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop deep") 
  end

  
end



