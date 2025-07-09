class StringCalculator

  def self.add string
    if string.empty?
      0
    else
      numbers = string.gsub(/[^-100-9]/, ',').split(",").map { |num| num.to_i }
      numbers.inject(0) { |sum, number| sum + number }
    end
  end

end
