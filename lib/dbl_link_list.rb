module LinkNode
  Node = Struct.new("Node", :val, :prev, :next)
end

class DblLinkList
  attr_accessor :head, :tail

  def initialize(node)
    @head = @tail = node
    @head.val = node.val
  end

  def add_tail(node)
      @tail.next = node
      node.prev = @tail
      @tail = node
      @tail.val = node.val
    end

  def add_head(node)
    @head.prev = node
    node.next = @head
    @head = node
    @head.val = node.val
  end

  def de_dup
    current_node = @head
    temp = current_node.next
    while current_node.next != nil
      while temp != nil
        if temp.val == current_node.val
          if temp.next
            (temp.prev).next = temp.next
            (temp.next).prev = temp.prev
          else
            (temp.prev).next = nil
          end
        end
        temp = temp.next
      end
      current_node = current_node.next  unless current_node.next == nil
      if current_node.next
        temp = current_node.next
      else
        temp = nil
      end
    end     
  end

end

