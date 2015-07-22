class Collatz
  def self.calculate_steps(n)
    return 1 if n == 2
    case n % 2
    when 0
      return self.calculate_steps(n/2) + 1
    else
      return self.calculate_steps((3 * n) + 1) + 1
    end
  end
end
