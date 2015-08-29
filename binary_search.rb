class BinarySearch
  def self.perform(x, a, l, r)
    q=(l+r)/2
    if a[q] == x
      return q
    elsif a[q] > x
      perform(x, a, l, q-1)
    else
      perform(x, a, q+1, r)
    end
  end
end

#puts BinarySearch.perform(1, [1,2,3,4,5,6,7,8,9,10,16], 0, [1,2,3,4,5,6,7,8,9,10,16].size-1)
