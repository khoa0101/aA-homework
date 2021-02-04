class Queue
    def initialize
      @ivar = []
    end
    
    def enqueue(el)
      @ivar << el
    end

    def dequeue
      @ivar.shift
    end

    def peek
      @ivar[0]
    end
end

p queue_1 = Queue.new
p queue_1.enqueue(1)
p queue_1.enqueue(2)
p queue_1.enqueue(3)
p queue_1.dequeue
p queue_1.peek
p queue_1