require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(string)
    if @head.nil?
      @head = Node.new(string)
    end
  end

  def count
    if @head
      return 1
    else
      return 0
    end
  end

  def to_string
    if @head
      @head.data
    end
  end
end