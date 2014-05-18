module UiHelper
  def around(range)
    range.to_a.sample
  end

  def lorem_words(num)
    num = around(num) if num.is_a?(Range)
    Faker::Lorem.words(num).join(' ')
  end

  def coinflip
    around([true, false])
  end
end
