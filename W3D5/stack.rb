class Stack
    def initialize
      # create ivar to store stack here!
      @ivar = []
    end

    def push(el)
      # adds an element to the stack
    @ivar << el
  end

  def pop
    # removes one element from the stack
    @ivar.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @ivar[0]
  end
end

#   p stack_1 = Stack.new
#   p stack_1.push(1)
#   p stack_1.push(2)
#   p stack_1.push(3)
#   p stack_1.peek
#   p stack_1.pop
#   p stack_1