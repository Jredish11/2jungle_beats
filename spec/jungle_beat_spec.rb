require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'
require 'rspec'

RSpec.describe JungleBeat do
  it 'exists' do
    jb = JungleBeat.new

    expect(jb).to be_an_instance_of JungleBeat
  end
  
  it 'can create a linked list, checks if head of list is empty' do
    jb = JungleBeat.new

    jb.list 
    
    expect(jb.list.head).to eq(nil)
  end
  
  it 'appends data to list, check if head.data is start of list' do
    jb = JungleBeat.new
    
    jb.list 
    jb.append("deep doo ditt")


    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")

    jb.append("woo hoo shu")

    expect(jb.count).to eq(6)
  end

  it 'it plays the beats' do
    jb = JungleBeat.new
    
    jb.append("deep doo ditt woo hoo shu")

    expect(jb.count).to eq(6)
    expect(jb.list.count).to eq(6)
   
    jb.play
  end
end



