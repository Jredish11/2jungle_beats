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

  
  it 'adds more nodes to list end, prepends node to beginning of list, and counts' do
    list = LinkedList.new

    list.append("plop")

    expect(list.to_string).to eq("plop")

    list.append("suu")
    
    list.prepend("dop")

    expect(list.to_string).to eq("dop plop suu")

    expect(list.count).to eq(3)
  end

  it 'inserts nodes to a certain index in the list' do
    list = LinkedList.new

    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")

    expect(list.to_string).to eq("dop woo plop suu")
  end

  it 'finds element index and specifies how many elements to return' do
    list = LinkedList.new

    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")


    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(2, 1)).to eq("shi")
    expect(list.find(0, 2)).to eq("deep woo")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end


end



