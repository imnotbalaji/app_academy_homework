
class Stack
    
    def initialize
      # create ivar to store stack here!
      @ivar = []
    end
  
    def push(el)
      # adds an element to the stack
      ivar.push(el)

    end
  
    def pop
      # removes one element from the stack
      ivar.pop
    end
  
    def peek
      # returns, but doesn't remove, the top element in the stack
      ivar[-1]
    end
    private
    attr_accessor :ivar
  end

  class Queue

    def initialize
        @queue = [] 
    end 

    def enqueue(el)
        queue.unshift(el)
    end 
    def dequeue
        queue.pop
    end 
    def peek 
        queue[-1]
    end 

    private
    attr_accessor :queue 
  end 

  class Map
    def initialize 
        @map = Array.new() {Array.new(2,[])}
    end  
    def set(key,value)
        map.each do |pair|
            if pair[0] == key
                pair[1] = value 
                return 
            end 
        end 
        map << [key,value]
    end 
    def get(key)
        map.each do |pair|
            return pair[1] if pair[0] == key 
        end 
        return "Not found"
    end 
    def delete(key)
        map.each.with_index do |pair,index|
            map.delete_at(index) if pair[0] == key 
        end 
        return nil
    end 
    private
    attr_accessor :map
  end 