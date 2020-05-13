module ApplicationHelper
  def date_parse(date)
    Chronic.parse(date)
  end
end
