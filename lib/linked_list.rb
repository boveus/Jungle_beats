class LinkedList
  attr_reader :head_node,
              :node_list
  def initialize
    @head_node = nil
    @current_node = 0
    @node_list = []
  end
  def assign_head_node(head_node)
    @head_node = head_node
    head_node.make_headnode
    @node_list.unshift(head_node)
  end
  def next
    @current_node += 1
  end
  def append(data)
    @node_list << Node.new(data)
  end
  def head
    @head_node
  end
  def to_string
    song = ""
    string_list = @node_list.map do |node|
        node.data + " "
    end
    string_list.each do |lyric|
      song = song + lyric
    end
    return song
  end
  def next_node
    @node_list[@current_node].next
  end
end
#
# def add_cc_numbers(number)
#   total = 0
#   number.each do |ccnumber|
#     total = total + ccnumber.to_i
#   end
#   return total
# end
