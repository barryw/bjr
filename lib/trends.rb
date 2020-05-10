class Array

  #
  # Calculates the trend from an array of numeric values
  #
  # Swiped from https://stackoverflow.com/questions/51440999/finding-data-trendlines-with-ruby
  def trend_line
    points = map.with_index { |y, x| [x+1, y] }
    n = points.size
    summation_xy = points.map{ |e| e[0]*e[1] }.inject(&:+)
    summation_x = points.map{ |e| e[0] }.inject(&:+)
    summation_y = points.map{ |e| e[1] }.inject(&:+)
    summation_x2 = points.map{ |e| e[0]**2 }.inject(&:+)
    slope = ( n * summation_xy - summation_x * summation_y ) / ( n * summation_x2 - summation_x**2 ).to_f
    offset = ( summation_y - slope * summation_x ) / n.to_f
    { slope: slope, offset: offset }
  end

end
