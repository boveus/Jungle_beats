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
    list = LinkedList.new
    2.times do
      list.append("doop")
    end
    list.assign_head_node
    assert_equal list.node_list.count, 2
  end

  def test_head
    list = LinkedList.new
    list.append("doop")
    list.assign_head_node
    assert_equal list.head, list.node_list[0]
  end

  def test_list_append
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "deep", list.node_list[1].data
  end

  def test_to_string_returns_all_nodes
    list = LinkedList.new
    3.times do
      list.append("doop")
    end
    list.assign_head_node
    assert_equal "doop doop doop ", list.to_string
  end

  def test_insert_handles_data_properly
     list = LinkedList.new
     list.append("deep")
     list.append("doop")
     list.append("deet")
     list.insert(1, "derp")


     assert_equal "deep", list.node_list[0].data
     assert_equal "derp", list.node_list[1].data
     assert_equal "doop", list.node_list[2].data
  end

  def test_insert_retains_headnode
    skip
    list = LinkedList.new
    list.append("deep")
    list.append("doop")
    list.append("deet")
    list.insert(1, "derp")

    assert list.node_list[0].headnode
  end

  def test_prepend_retains_headnode

    list = LinkedList.new
    list.append("deep")
    list.append("doop")
    list.append("deet")
    list.prepend("do")

    assert list.node_list[0].headnode
  end

  def test_prepend_appends_correctly

    list = LinkedList.new
    list.append("one")
    list.append("two")
    list.append("three")
    list.prepend("actually im one")
    assert_equal "actually im one", list.node_list[0].data
    assert_equal "one", list.node_list[1].data
  end

  def test_find_returns_song_lyric

    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    assert_equal "shi", list.find(2,1)
    assert_equal "woo shi shu", list.find(1, 3)

  end

# position to return, number of elements

#     > list.to_string
# => "deep woo shi shu blop"
# > list.find(2, 1)
# => "shi"
# > list.find(1, 3)
# => "woo shi shu"
# > list.includes?("deep")
# => true
# > list.includes?("dep")
# => false
# > list.pop
# => "blop"
# > list.pop
# => "shu"
# > list.to_string
# => "deep woo shi"





end
