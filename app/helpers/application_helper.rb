module ApplicationHelper
  def percent(a, b)
    if a == 0
      0
    else
      a = a.to_f
      b = b.to_f
      percent = ((a /(a + b))*100).to_f
      percent.round
    end
  end
end
