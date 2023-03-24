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
end





# > list.to_string
# => "doop"