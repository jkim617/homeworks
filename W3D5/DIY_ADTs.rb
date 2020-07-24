#Exercise 1 - Stack

class Stack
    def initialize
        @ivar = []
    end

    def push(el)
        @ivar << el
    end

    def pop
        @ivar.pop()
    end

    def peek
        @ivar[-1]
    end
end

#Exercise 2 - Queue

class Queue
    def initialize
        @ivar = []
    end

    def enqueue(el)
        @ivar.unshift(el)
    end

    def dequeue
        @ivar.pop
    end

    def peek
        @ivar[0]
    end
end

#Exercise 3 - Map

class Map
    def initialize
        @ivar = {}
    end

    def set(key, value)
        @ivar[key] = value
    end

    def get(key)
        @ivar[key]
    end

    def delete(key)
        @ivar.delete(key)
    end

    def show
        @ivar
    end
end

