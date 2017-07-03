gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/node'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new("plop")
    @node2 = Node.new("plink")
  end

  def test_node_returns_data
    assert "plop", @node.data
  end

  def test_single_node_next_returns_nil
    assert_nil @node.next_node
  end

  def test_setting_next_node
    @node.set_next_node(@node2)
    assert_equal Node, @node.next_node.class
  end

  def test_setting_next_node_nil
    @node.set_next_node(@node2)
    @node.set_next_node(nil)
    assert_nil @node.next_node
  end
end
