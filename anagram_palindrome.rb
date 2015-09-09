class AnagramPalindromeChecker
  def self.check(str)
    freq_hash = str.scan(/\w/).inject(Hash.new(0)){|f, chr| f[chr] += 1; f}
    count = 0
    freq_hash.each{|k,v| count+=1 unless v.even? }
    count > 1 ? 0 : 1
  end
end
