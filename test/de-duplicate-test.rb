require_relative "../lib/dbl_link_list"

list = DblLinkList.new(LinkNode::Node.new(1, nil, nil))
(1..199).map {list.add_tail(LinkNode::Node.new(rand(100), nil, nil))}

node = list.head
i = 1
puts "\n\n List Values:\n\n"
while node
  print " <=> #{node.val}"
  if i % 10 == 0
    puts "\n\n\n"
  end
  i += 1
  node = node.next
end


puts "\n\n\n"

list.de_dup
      
puts "\n\n\n\n Depulicated List:\n\n"
node = list.head
i = 1
while node
  print " <=> #{node.val}"
  if i % 10 == 0
    puts "\n\n\n"
  end
  i += 1
  node = node.next

end

puts "\n\n"

