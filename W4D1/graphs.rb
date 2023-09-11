class GraphNode 
  
    def initialize(value)
        @value = value
        @neighbors = []
    end 

    def neighbors=(*nodes)
        nodes.each do |node|
            neighbors << node
        end
    

    end 

    private
    attr_reader :neighbors


end 