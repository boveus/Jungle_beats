class LinkedList
  attr_reader :head_node,
              :node_list
  def initialize
    @head_node = nil
    @current_node = 0
    @node_list = []
  end

  def assign_head_node
      @head_node = @node_list[0]
      @head_node.is_headnode
  end
  def append(data)
    @node_list << Node.new(data)
    assign_head_node
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
    if node.index + 1 != @node_list.length
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

  def set_node_location
    @node_list.each do |node|
      set_next_node(node)
      set_previous_node(node)
    end
    set_node_indices
  end

  def set_node_indices
    @node_list.each_with_index do |node, index|
        node.change_index(index)
    end
    assign_head_node
  end

  def shift_data_right
    new_node = Node.new("null")
    new_node_list = []
    new_node_list << new_node
    @node_list.each do |node|
      new_node_list << node
    end
    @node_list = new_node_list
  end

  def shift_data_around_new_node(index, data)
    new_node = Node.new(data)
    new_node_list = []
    @node_list.each_with_index do |node, node_index|
      if node_index == index
        new_node_list[node_index + 1] = node
      elsif node_index > index
        new_node_list << node
      elsif node_index < index
        new_node_list[node_index] = node
      end
    end
    new_node_list[index] = new_node
    @node_list = new_node_list
  end

  def insert(index, data)
    shift_data_around_new_node(index, data)
    set_node_indices
    assign_head_node
    set_node_location
  end

  def prepend(data)
    shift_data_right
    set_node_indices
    head_node.change_data(data)
    set_node_location
  end
end

# need a function to set node index by rael index
# need a function to iterate through each node and set the neighbors
# it also needs to iterate through each node's data and move it over one
