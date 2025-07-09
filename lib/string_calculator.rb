class StringCalculator

  def self.add string
    if string.empty?
      0
    else
      numbers = string.gsub(/[^-100-9]/, ',').split(",").map { |num| num.to_i }
      negatives = []

      numbers.each { |i| negatives << i if  i < 0 }
      if negatives.empty?
        numbers.inject(0) { |sum, number| sum + number }
      else
        raise Exception.new "negative numbers not allowed " + negatives.join(", ")
      end
    end
  end

end
