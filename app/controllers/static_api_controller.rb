# frozen_string_literal: true

#
# Handles static routes
#
class StaticApiController < ApplicationController
  skip_before_action :authenticate_request, only: [:health]

  def timezones
    timezones = ActiveSupport::TimeZone::MAPPING.keys
    message I18n.t('timezones.messages.received'), :ok, false, timezones, 'tzarray'
  end

  def tags
    tags = paginate current_user.owned_tags
    message I18n.t('tags.messages.received'), :ok, false, tags, 'tagarray'
  end

  def health
    # Check the database connection
    ActiveRecord::Base.establish_connection

    # Make sure we have at least 1 sidekiq client
    redis_info = Sidekiq.redis(&:info)
    raise unless redis_info['connected_clients'].to_i.positive?

    head :ok
  end
end
