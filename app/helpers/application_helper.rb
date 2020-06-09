# frozen_string_literal: true

module ApplicationHelper
  def date_parse(date)
    Chronic.parse(date)
  end

  def to_bool(obj)
    return obj if [TrueClass, FalseClass].include? obj.class
    return obj != 0 if [Integer].include? obj.class
    return true if %w[true 1 yes on t].include? obj
    return false if %w[false 0 no off f].include? obj

    nil
  end
end
