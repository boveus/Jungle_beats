class Node
  attr_reader :data,
              :next_node,
              :headnode,
              :index

  def initialize(data)
    @data = data
    @headnode = false
    @next_node = nil
    @previous_node = nil
    @index = nil
    # @head_node = head_node
  end

  def set_next_node(next_node)
    @next_node = next_node
  end

  def set_previous_node(previous_node)
    @previous_node = previous_node
  end

  def is_headnode
    @headnode = true
    @index = 0
  end

  def change_index(index)
    @index = index
  end

  def change_data(new_data)
    @data = new_data
  end
end
