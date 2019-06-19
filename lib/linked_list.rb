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

  def prepend(string)
    if @head
      current_first = @head
      @head = Node.new(string)
      @head.next_node = current_first
      @head
    else
      @head = Node.new(string)
    end
  end

  def insert(pos, string)
    new_node = Node.new(string)
    node = @head
    i = 1
    until i == pos || node.nil? do
      node = node.next_node
      i += 1
    end
    current_node = node
    new_node.next_node = current_node.next_node
    node.next_node = new_node
  end

  def find(node_position, number_of_nodes)
    node = @head
    i = 0
    until i == node_position do
      node = node.next_node
      i += 1
    end
    i = 0
    string = ''
    until i == number_of_nodes do
      string << node.data + " "
      node = node.next_node
      i += 1
    end
    return string.strip
  end

  def includes?(string)
    node = @head
    until node.nil? || string == node.data do
      node = node.next_node
    end
    if node
      string == node.data
    else
      false
    end
  end

  def pop
    node = @head
    until node.next_node.next_node.nil? do
      node = node.next_node
    end
    node_data = node.next_node.data
    node.next_node = nil
    node_data
  end
end