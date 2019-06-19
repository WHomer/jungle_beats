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
    assert_equal 1, @link_list.count
    assert_equal "doop", @link_list.to_string
  end

  def test_append_second_node
    first_node = @link_list.append("doop")
    second_node = @link_list.append("deep")

    assert_equal second_node, @link_list.head.next_node
    assert_equal 2, @link_list.count
    assert_equal "doop deep", @link_list.to_string
  end

  def test_prepend_method
    node_a = @link_list.append("plop")
    node_b = @link_list.append("suu")
    node_c = @link_list.prepend("dop")

    assert_equal "dop", node_c.data
    assert_equal "dop plop suu", @link_list.to_string
    assert_equal 3, @link_list.count
  end

  def test_insert_method
    node_a = @link_list.append("plop")
    node_b = @link_list.append("suu")
    node_c = @link_list.prepend("dop")
    node_d = @link_list.insert(1, "woo")

    assert_equal "woo", node_d.data
    assert_equal "dop woo plop suu", @link_list.to_string
  end
end