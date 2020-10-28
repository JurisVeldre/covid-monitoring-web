# frozen_string_literal: true

class Measurement
  include Mongoid::Document

  field :humidity, type: String
  field :co2, type: String

  belongs_to :room

  validates :humidity, :co2, :room_id, presence: true
end
