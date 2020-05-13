module ApplicationHelper
  def date_parse(date)
    Chronic.parse(date)
  end

  #
  # Figure out of an object is "true"
  #
  def true?(obj)
    obj.to_s.downcase == "true"
  end
end
