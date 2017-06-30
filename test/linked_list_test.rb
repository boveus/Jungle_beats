# - Build a linkedlist class
#   - Method .head returns head node
#   - Method .next method returns next node
#     - do next_node method of next node within the list
#   - Method .count returns number of nodes
#   - Method .to_string returns all nodes as a single string
#   - *list method contains first node? or all nodes?*
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/linked_list'
require './lib/node'


class LinkedListTest < Minitest::Test

  def head_returns_head_node
      data = "doop"
      head_node = new.Node(data)
      list = new.LinkedList
      list.assign_head_node(head_node)

      assert_equal head_node, list.head_node

  end
  def next_returns_next_node
    skip
  end

  def count_returns_count
  end

  def to_string_returns_all_nodes
  end
end
