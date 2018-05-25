class Array
  def map_with_index
    if block_given?
      self.map.with_index do |x,y|
        yield(x,y)
      end
    else
      self.each_with_index.map
    end
  end
end
