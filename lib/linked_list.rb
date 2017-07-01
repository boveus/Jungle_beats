class LinkedList
  attr_reader :head_node,
              :node_list
  def initialize
    @head_node = nil
    @current_node = 0
    @node_list = []
  end
  def assign_head_node(head_node)
      @node_list[0] = head_node
      @head_node = head_node
      head_node.is_headnode
      set_node_location(head_node)
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
  def active_node
    @node_list[@current_node]
  end

  def set_next_node(node)
    if node.index + 1 < @node_list.length
    node.set_next_node(node.index + 1)
    else
      node.set_next_node(nil)
    end
  end

  def set_previous_node(node)
    if node.headnode == false
      node.set_previous_node(node.index - 1)
    else
      node.set_previous_node(nil)
    end
  end

  def set_node_location(node)
    set_next_node(node)
    set_previous_node(node)
    set_node_indices
  end

  def set_node_indices
    @node_list.each_with_index do |node, index|
      node.change_index(index)
    end
  end

  def shift_data_right
    @node_list.each_with_index do |node, index|
      set_node_location(node)
      @node_list[index + 1].change_data(node.data) unless index == @node_list.length - 1
    end
  end

  def insert(index, new_data)
    @node_list[index].change_data(new_data)
  end
  def prepend(data)
    #this needs to be fixed
    node = Node.new(data)
    assign_head_node(node)
    @node_list.unshift node

    shift_data_right
    set_node_location(node)

  end
end

# need a function to set node index by rael index
# need a function to iterate through each node and set the neighbors
# it also needs to iterate through each node's data and move it over one
