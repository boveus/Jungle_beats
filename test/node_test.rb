gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/node'

class NodeTest < Minitest::Test

  def test_node_init_with_data
    node = Node.new("doop")
    assert_equal "doop", node.data
  end

  def test_nextnode_returns_nil
    node = Node.new("doop")
    assert_equal nil, node.next_node
  end

  def test_find_next_node
    data = "doop"
    node = Node.new(data)
    node.next_node
    assert_equal 1, node.next
  end

  def test_is_head_node
    node = Node.new("doop")
    node.make_headnode
    assert_equal node.is_headnode?, true
  end
end
