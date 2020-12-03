# frozen_string_literal: true

module Institutions
  class ApisController < ApplicationController
    def show
      room = Institutions::Room.find(params[:room_id])
      json = { room_data: room, measurements: room.measurements.last }

      render json: json
    end
  end
end
