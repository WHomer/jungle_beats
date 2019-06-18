require 'minitest/autorun'
require './lib/linked_list'

class LinkedListTest < MiniTest::Test
  def setup
    @link_list = LinkedList.new
  end

  def test_does_it_exist
    assert_instance_of LinkedList, @link_list
  end

  def test_instance_variables
    refute @link_list.head
  end

  def test_append
    node = @link_list.append("doop")
    assert_instance_of Node, node
    refute @link_list.head.next_node
    assert 1, @link_list.count
    assert "doop", @link_list.to_string
  end

end