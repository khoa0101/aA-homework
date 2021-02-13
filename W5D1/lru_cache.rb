class LRUCache
  def initialize
    @size = size
    @cache = []
  end

  def count
    # returns number of elements currently in cache
    @cache.count
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @cache.inclue?(el)
      @cache.delete(el)
      @cache << el
    else count >= @size
      @cache.shift
      @cache << el
    else
      @cache << el
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @cache
  end

  private
  # helper methods go here!

end