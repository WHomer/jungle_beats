require 'minitest/autorun'
require './lib/node'

class NodeTest < MiniTest::Test
  def setup
    @node = Node.new("plop")
  end

  def test_does_it_exist
    assert_instance_of Node, @node
  end

  def test_test_instance_variables
    assert_equal "plop", @node.data
    refute @node.next_node
  end
end