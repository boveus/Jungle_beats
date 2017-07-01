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
  def test_count_returns_count
    node = Node.new("doop")
    list = LinkedList.new
    list.assign_head_node(node)
    2.times do
      list.append("doop")
    end
    assert_equal list.node_list.count, 3
  end

  def test_head
    list = LinkedList.new
    node = Node.new("doop")
    list.assign_head_node(node)
    assert_equal list.head, node
  end

  def test_list_append
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "deep", list.node_list[1].data
  end

  def test_to_string_returns_all_nodes
    list = LinkedList.new
    node = Node.new("doop")
    list.assign_head_node(node)
    2.times do
      list.append("doop")
    end
    assert_equal "doop doop doop ", list.to_string
  end

  def test_insert
     skip
     list = LinkedList.new
     list.append("deep")
     list.append("doop")
     list.append("deet")
     list.insert(1, "derp")

     assert_equal "derp", list.node_list[1].data
     assert_equal "deep", list.node_list[1].data
  end

  def test_prepend

    list = LinkedList.new
    list.append("deep")
    list.append("doop")
    list.append("deet")
    list.prepend("do")

    assert_equal "do", list.node_list[1].data
    assert_equal "deep", list.node_list[1].data
  end
  # insert will insert one or more elements at a given position in the list.
  #  It takes two parameters, the first one is the position at which to
  #  insert nodes,
  # the second parameter is the string of data to be inserted.

end
