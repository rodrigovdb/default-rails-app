# frozen_string_literal: true

module ApplicationHelper
  def beautify_timestamp(timestamp)
    return ' - ' if timestamp.blank?

    timestamp = Time.parse(timestamp) if timestamp.is_a? String

    timestamp.strftime('%d/%m/%Y - %H:%M')
  end
end
