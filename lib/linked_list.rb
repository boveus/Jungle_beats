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
    @node_list << head_node
  end
  def next
    @current_node += 1
  end
  def append_node(node)
    @node_list << node
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
end
#
# def add_cc_numbers(number)
#   total = 0
#   number.each do |ccnumber|
#     total = total + ccnumber.to_i
#   end
#   return total
# end
