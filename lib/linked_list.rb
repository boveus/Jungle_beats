class linkedlist
  attr_reader :head_node
  def initialize
    @head_node = nil
  end
  def assign_head_node(head_node)
    @head_node = head_node
  end
end
