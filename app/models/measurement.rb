# frozen_string_literal: true

class Measurement
  include Mongoid::Document
  store_in collection: 'sensorDataAranet'

  field :humidity, type: String
  field :co2, type: String
  field :sensor_id, type: String

  validates :humidity, :co2, :sensor_id, presence: true
end
