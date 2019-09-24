class StaticApiController < ApplicationController

  def timezones
    render json: ActiveSupport::TimeZone::MAPPING.keys
  end
end
