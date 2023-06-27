class Stack
  def initialize
    @list = []
  end

  def push(el)
    list.push(el)
  end

  def pop
    list.pop
  end

  def peek
    list.last
  end
end