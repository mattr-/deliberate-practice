class Raindrops
  def self.convert(input)
    String.new.tap do |output|
      output << "Pling" if factor_of_three?(input)
      output << "Plang" if factor_of_five?(input)
      output << "Plong" if factor_of_seven?(input)
      output << input.to_s if string.empty?
    end
  end

  def self.factor_of_three?(input)
    input % 3 == 0
  end

  def self.factor_of_five?(input)
    input % 5 == 0
  end

  def self.factor_of_seven?(input)
    input % 7 == 0
  end
end
