require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    # your code here
    return nil if n<1
    counter=0
    target=head 
    while target 
      counter+=1
      target=target.next_node
    end
    return nil if n<1 || n>counter
    i=1
    node=head
    while i<counter-n+1
      node=node.next_node 
      i+=1
    end
    node.value
  end


end
