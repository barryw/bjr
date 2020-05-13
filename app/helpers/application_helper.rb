module ApplicationHelper
  def date_parse(date)
    Chronic.parse(date)
  end

  def to_bool(obj)
    return obj if [TrueClass, FalseClass].include? obj.class
    return (obj == 0 ? false : true) if [Integer].include? obj.class
    return true if ['true', '1', 'yes', 'on', 't'].include? obj
    return false if ['false', '0', 'no', 'off', 'f'].include? obj
    return nil
  end
end
