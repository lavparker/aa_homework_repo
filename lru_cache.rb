class LRUCache
    def initialize(n)
        @size = n 
        @cache = []
    end

    def count
        @cache.length
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(el)
            @cache << el
        elsif self.count >= size
            @cache.shift
            @cache.el
        else
            @cache << el
        end
    end

    def show
        @cache
    end

    private
    attr_reader :size, :cache

end