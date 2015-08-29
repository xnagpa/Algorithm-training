class SelectionSort
  def self.perform(a)
    for i in 0..a.size-2
      min =i
      for j in i+1..a.size-1

        min = j if a[j] < a[min]
      end
      temp = a[i]
      a[i] = a[min]
      a[min] = temp
    end
    return a
  end

end
