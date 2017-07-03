gem 'minitest'

require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/linked_list'
require './lib/node'
require './lib/jungle_beat'

class JungleBeatTest < Minitest::Test
  def setup
    @jungle_beat = JungleBeat.new()
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
  end

  def test_jb_count
    @jungle_beat.append("deep doo ditt")
    @jungle_beat.append("woo hoo shu")
    assert_equal 6, @jungle_beat.count
  end

  def test_jb_play
    @jungle_beat.append("deep doo ditt")
    @jungle_beat.append("woo hoo shu")
    assert_equal  "", @jungle_beat.play
  end

  def test_validation_of_new_notes
    @jungle_beat.append("Mississippi")
    @jungle_beat.append("3434")
    @jungle_beat.append("woo!")
    @jungle_beat.append("&*(!@")
    @jungle_beat.append("tee")
    @jungle_beat.append("boop")
    assert_equal 2, @jungle_beat.count
  end

  def test_jb_all_function_returns_all_notes_as_string
    @jungle_beat.append("deep")
    assert_equal "deep", @jungle_beat.all
  end

  def test_prepend_returns_successful_prendendations
    assert_equal 3, @jungle_beat.prepend("tee tee tee Mississippi")
  end



  # tee dee deep bop boop la na

end
