gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/node'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new("plop")
  end

  def test_node_returns_data
    assert "plop", @node.data
  end

  def test_single_node_next_returns_nil
    assert_nil @node.next_node
  end

  # > require "./lib/node"
  # > node = Node.new("plop")
  # > node.data
  # => "plop"
  # > node.next_node
  # => nil



end
