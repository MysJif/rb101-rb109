def egyptian(rational)
  denom = 1
  egypt = []

  loop do
    if (rational - Rational(1, denom)) >= 0
      egypt << denom
      rational = rational - Rational(1, denom)
    end
    denom += 1
    break if rational == 0
  end
  egypt
end

def unegyptian(egyptian)
  rational = Rational(0, 1)
  egyptian.each { |denom| rational += Rational(1, denom) }
  rational
end

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
