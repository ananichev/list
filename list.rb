require 'node'

class List
  attr_accessor :first, :last

  def initialize(first, last = nil)
    @first = first
    @last = last || first
  end

  def add_node(value)
    next_node = Node.new(value, @last)
    @last.nekst = next_node
    @last = next_node
  end

  def delete_by_value(value)
    node = find_by_value(value)
    @first = node.nekst if @first == node
    @last = node.prev if @last == node
    node.delete if node
  end

  def find_by_value(value)
    node = @first
    (node.value == value ? (break node) : node = node.nekst) while node
  end
end
