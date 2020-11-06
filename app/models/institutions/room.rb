# frozen_string_literal: true

module Institutions
  class Room
    include Mongoid::Document
    store_in collection: 'rooms'

    field :name, type: String
    field :sensor_id, type: String
    field :institution_id, type: String

    belongs_to :institution
    has_many :measurements, dependent: :destroy

    validates :name, :sensor_id, :institution_id, presence: true
  end
end
