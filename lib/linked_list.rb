require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(string)
    if @head.nil?
      @head = Node.new(string)
    else
      node = @head
      until node.next_node.nil? do
          node = node.next_node
      end
      node.next_node = Node.new(string)
    end
  end

  def count
    if @head
      node = @head
      i = 0
      until node.nil? do
          node = node.next_node
          i += 1
      end
      return i
    else
      return 0
    end
  end

  def to_string
    if @head
      node = @head
      string = ''
      until node.nil? do
          string << node.data + " "
          node = node.next_node
      end
      return string.strip
    end
  end
end