class Node
  attr_reader :data,
              :next_node,
              :head_node

  def initialize(data, head_node = false)
    @data = data
    @next_node = nil
    @head_node = head_node
  end
  def next
  @next_node = 0
  @next_node += 1
  end
  def is_headnode?
    @head_node
  end
  def make_headnode
    @head_node = true
  end
end
