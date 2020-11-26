# frozen_string_literal: true

module Institutions
  class Room
    include Mongoid::Document
    include Mongoid::Attributes::Dynamic

    store_in collection: 'rooms'

    field :name, type: String
    field :sensor_id, type: String
    field :institution_id, type: String

    belongs_to :institution, class_name: 'Institution'

    validates :name, :sensor_id, :institution_id, presence: true

    def measurements
      Measurement.where(sensor_id: sensor_id)
    end
  end
end
