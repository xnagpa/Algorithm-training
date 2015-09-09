class BracketsValidator

  def self.validate(str)
    bracket_counter = 0
    str.each_char do |char|
      bracket_counter+=1 if char == "("
      bracket_counter-=1 if char == ")"
      return 0 if bracket_counter < 0
    end
    bracket_counter == 0 ? 1 : 0
  end
end
