gem 'minitest'

require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/linked_list'
require './lib/node'
require './lib/jungle_beat'

class JungleBeatTest < Minitest::Test
  def setup
    @jungle_beat = JungleBeat.new
  end

  def test_jungle_beats_list_returns_a_list_object
    assert_equal LinkedList, @jungle_beat.list.class
  end

  def test_jb_list_head_nil_by_default
    assert_nil @jungle_beat.list.head
  end

  def test_jb_append
    @jungle_beat.append("deep doo ditt")
    assert_equal "deep", @jungle_beat.list.head.data
    assert_equal "doo", @jungle_beat.list.head.next_node.data
    @jungle_beat.append("woo hoo shu")
    assert_equal 6, @jungle_beat.count
  end

  def test_jb_count
    @jungle_beat.append("deep doo ditt")
    @jungle_beat.append("woo hoo shu")
    assert_equal 6, @jungle_beat.count
  end

  def test_jb_play
    @jungle_beat.append("deep doo ditt")
    @jungle_beat.append("woo hoo shu")
    # assert_equal  "\`say -r 500 -v Boing \"deep doo ditt woo hoo shu\"\'", @jungle_beat.play
    assert_equal  "", @jungle_beat.play
  end
end
