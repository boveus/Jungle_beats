class Node
  attr_reader :data
  def initialize(data)
    @data = data
    @next_node = nil
  end
  def next_node
  @next_node
  end
  def assign_next_node(next_node)
  @next_node = next_node
  end
end
