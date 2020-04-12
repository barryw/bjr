# frozen_string_literal: true

#
# Handles static routes
#
class StaticApiController < ApplicationController
  skip_before_action :authenticate_request, only: [:health]

  def timezones
    render json: ActiveSupport::TimeZone::MAPPING.keys
  end

  def tags
    render json: current_user.owned_tags
  end

  def health
    # Check the database connection
    ActiveRecord::Base.establish_connection
    ActiveRecord::Base.connection
    raise unless ActiveRecord::Base.connected?

    # Make sure we have at least 1 sidekiq client
    redis_info = Sidekiq.redis(&:info)
    raise unless redis_info['connected_clients'].to_i.positive?

    head :ok
  end
end
