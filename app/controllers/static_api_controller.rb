class StaticApiController < ApplicationController
  def timezones
    render json: ActiveSupport::TimeZone::MAPPING.keys
  end

  def tags
    render json: current_user.owned_tags
  end
end
