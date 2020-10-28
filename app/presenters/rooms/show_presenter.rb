# frozen_string_literal: true

module Rooms
  class ShowPresenter < ApplicationPresenter
    attr_reader :room

    def initialize(room)
      @room = room
    end

    def room_measurement
      @room.measurements.last
    end

    def humidity_check
      return false unless room_measurement.humidity.to_i < 50

      true
    end

    def co2_check
      return false unless room_measurement.co2.to_i < 1000

      true
    end

    def quality_in_limits
      return false unless humidity_check && co2_check

      true
    end

    def institutions_link
      url_helpers.institutions_path
    end

    def institution_link(institution)
      url_helpers.institution_path(institution)
    end
  end
end
