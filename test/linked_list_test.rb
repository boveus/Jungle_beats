gem 'minitest'

require 'minitest/autorun'
require 'minitest/pride'

require './lib/linked_list'
require './lib/node'


class LinkedListTest < Minitest::Test
  def setup
    @list = LinkedList.new
    def add_node(data = "TEST")
      @data = data
      @list.append(data)
    end
  end

  def test_list_head_returns_nil_if_empty
    assert_nil @list.head
  end

  def test_list_head_next_node_returns_nil_if_no_neighbor
    add_node
    assert_nil @list.head.next_node
  end

  def test_list_count_with_single_node
    add_node
    assert_equal 1, @list.count
  end

  def test_list_count_with_ten_nodes
    10.times { add_node }

    assert_equal 10, @list.count
  end

  def test_list_to_string
    add_node("doop")

    assert_equal "doop", @list.to_string
  end

  def test_list_to_string_three_nodes
    3.times { add_node("doop") }
    assert_equal "doop doop doop", @list.to_string
  end

  def test_list_count_three_nodes
    3.times { add_node }
    assert_equal 3, @list.count
  end

  def test_head_next_node_returns_node_object
    add_node("doop")
    add_node("deep")

    assert_equal Node, @list.head.next_node.class
  end

  def test_prepend_actually_prepends
    add_node("plop")
    add_node("suu")
    @list.prepend("dop")

    assert_equal "dop plop suu", @list.to_string
  end

  def test_prepend_sets_headnode
    add_node("plop")
    add_node("suu")
    @list.prepend("dop")

    assert_equal "dop", @list.head.data
    assert_equal 3, @list.count
  end

  def test_insert_actually_inserts
    add_node("dop")
    add_node("plop")
    add_node("suu")
    @list.insert(1, "woo")

    assert_equal "dop woo plop suu", @list.to_string
  end

  def test_insert_doesnt_break_head
    add_node("dop")
    add_node("plop")
    add_node("suu")
    @list.insert(1, "woo")

    assert_equal "dop", @list.head.data
  end

  def test_insert_with_invalid_positions_and_arguments
    list = LinkedList.new
    list.append("dop")
    list.append("plop")
    list.append("suu")
    list.insert(5, "woo")
    list.insert(0, "woo")
    list.insert("woo", 1)

    assert_equal "dop plop suu", list.to_string
  end

  def test_find_actually_finds_stuff
    add_node("deep")
    add_node("woo")
    add_node("shi")
    add_node("shu")
    add_node("blop")

    assert_equal "shi", @list.find(2, 1)
    assert_equal "woo shi shu", @list.find(1, 3)
  end

  def test_that_includes_is_truthy_and_falsy
    add_node("deep")
    add_node("woo")
    add_node("shi")
    add_node("shu")
    add_node("blop")

    assert @list.includes?("deep")
    refute @list.includes?("dep")
  end

  def test_making_it_pop
    add_node("deep")
    add_node("woo")
    add_node("shi")
    add_node("shu")
    add_node("blop")

    assert_equal "blop", @list.pop
    assert_equal "shu", @list.pop
    assert_equal "deep woo shi", @list.to_string
  end
end
