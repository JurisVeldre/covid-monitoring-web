# frozen_string_literal: true

class ApiController < ApplicationController
  def show
    room = Institutions::Room.find_by(beacon_id: params[:id])
    json = { room_data: room, measurements: room.measurements.last }

    render json: json
  end
end
