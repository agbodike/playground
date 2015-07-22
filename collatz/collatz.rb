class Collatz
  class InvalidArgumentError < StandardError; end
  class ValidationError < StandardError; end

  def self.calculate_steps(n)
    raise Collatz::InvalidArgumentError unless n.is_a? Integer
    raise Collatz::ValidationError if n < 2

    return 1 if n == 2
    case n % 2
    when 0
      return self.calculate_steps(n/2) + 1
    else
      return self.calculate_steps((3 * n) + 1) + 1
    end
  end
end
