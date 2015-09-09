class TriangleDetector
  def self.detect(arr)
    arr.sort! # quick sort  O(nlog(n))

    arr.each_with_index do |a, i| # linear search  O(n)
      arr.delete_at(i) if a < 0
    end

    @triangle = 0

    for i in 1...arr.size - 1 # linear search  O(n)

      if arr[i] + arr[i - 1] > arr[i + 1]
        @triangle = 1
        break
      end

    end

    @triangle
    # O(nlog(n)) + O(n) + O(n) = O(nlog(n))
  end
end
