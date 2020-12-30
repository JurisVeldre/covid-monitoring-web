# frozen_string_literal: true

class Measurement
  include Mongoid::Document
  store_in collection: 'sensorDataAranet'

  field :humidity, type: String
  field :co2, type: String
  field :sensor_id, type: String

  validates :humidity, :co2, :sensor_id, presence: true

  def co2_limit
    return false unless co2.to_i > 1000

    true
  end

  def humidity_limit
    return false unless humidity.to_i > 50

    true
  end
end
