# frozen_string_literal: true

class ApiController < ApplicationController
  def show
    room = Institutions::Room.find_by(beacon_id: params[:id])

    render json: json_data(room)
  end

  private

  def json_data(room)
    {
      room_data: room,
      measurements: room.measurements.last,
      co2_limit: room.measurements.last.co2_limit,
      humidity_limit: room.measurements.last.co2_limit,
      beacon_data: Beacon.where(beacon_Id: params[:id]).last
    }
  end
end
