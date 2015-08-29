class InsertionSort
  def self.perform(a)
    for i in 1..a.size-1
      key = a[i]
      j = i-1
      while j >= 0 && a[j] > key
        a[j+1] = a[j]
        j-=1
      end
      a[j+1] = key
    end
    return a
  end

end
