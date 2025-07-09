class StringCalculator

  def self.add string
    if string.empty?
      0
    else
      # remove delimeters from strings; seperated by commas;
      # returns integers as an array
      numbers = string.gsub(/[^-100-9]/, ',').
      split(",").map { |num| num.to_i }

      unless has_negative_numbers?(numbers)
        numbers.inject(0) { |sum, number| sum + number }
      else
        raise Exception.new "negative numbers not allowed " +
        has_negative_numbers?(numbers).join(", ")
      end
    end
  end

  def self.has_negative_numbers?(numbers)
    negatives = []
    #collect negative numbers into array if negatives.
    numbers.each { |i| negatives << i if  i < 0 }
    negatives.empty? ? false : negatives
  end

end
