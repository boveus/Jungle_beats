gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/node'

class NodeTest < Minitest::Test

  def test_node_init_with_data
    node = Node.new("doop")
    assert_equal "doop", node.data
  end
  def test_find_next_node
    data = "doop"
    node = Node.new(data)
    node.assign_next_node(1)
    assert_equal 1, node.next_node
  end

end
