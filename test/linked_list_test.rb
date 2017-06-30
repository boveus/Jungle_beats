# - Build a linkedlist class
#   - Method .head returns head node
#   - Method .next method returns next node
#     - do next_node method of next node within the list
#   - Method .count returns number of nodes
#   - Method .to_string returns all nodes as a single string
#   - *list method contains first node? or all nodes?*
gem 'minitest'

require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/linked_list'
require './lib/node'


class LinkedListTest < Minitest::Test
  def test_head_returns_head_node
    list = LinkedList.new
    node = Node.new("doop")
    list.assign_head_node(node)
    assert_equal node, list.head_node
  end
  def test_next_returns_next_node
    list = LinkedList.new
    node = Node.new("doop")
    list.assign_head_node(node)
    assert_equal list.next, 1
  end

  def test_count_returns_count
    node = Node.new("doop")
    list = LinkedList.new
    list.assign_head_node(node)
    2.times do
      list.append_node(node)
    end
    assert_equal list.node_list.count, 3
  end
  def test_to_string_returns_all_nodes
    list = LinkedList.new
    node = Node.new("doop")
    list.assign_head_node(node)
    2.times do
      list.append_node(node)
    end
    assert_equal "doop doop doop ", list.to_string
  end
end
