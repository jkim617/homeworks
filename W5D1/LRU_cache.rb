class LRUCache
    def initialize
        @size = size
        @cache = []
    end

    def count
        @cache.length
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(el)
            @cache << el
        end
        

    end
    
    def show
        p @cache
        nil
    end

    private
end
