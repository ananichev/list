class Node
  attr_accessor :value, :nekst, :prev

  def initialize(value, prev = nil, nekst = nil)
    @value = value
    @nekst = nekst
    @prev = prev
  end

  def delete
    prev, nekst = self.prev, self.nekst
    prev.nekst = nekst if prev
    nekst.prev = prev if nekst
    self
  end
end
