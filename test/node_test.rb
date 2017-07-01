gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/node'

class NodeTest < Minitest::Test

  def test_node_init_with_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_nextnode_returns_nil
    node = Node.new("doop")
    assert_equal nil, node.next_node
  end

  def test_find_next_node
    node = Node.new("doop")
    node.next_node
    assert_equal nil, node.next_node
  end

  def test_is_head_node
    node = Node.new("doop")
    node.is_headnode
    assert_equal node.headnode, true
  end
end
