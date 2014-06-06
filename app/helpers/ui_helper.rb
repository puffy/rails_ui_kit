module UiHelper
  def around(range)
    range.to_a.sample
  end

  def lorem(paras)
    paras = around(paras) if paras.is_a?(Range)
    Faker::Lorem.paragraphs(paras).map{|p| "<p>#{p}</p>"}.join.html_safe
  end

  def lorem_words(num)
    num = around(num) if num.is_a?(Range)
    Faker::Lorem.words(num).join(' ')
  end

  def coinflip
    around([true, false])
  end

  def sometimes(num = 3)
    yield if num == around(1..num)
  end
end
