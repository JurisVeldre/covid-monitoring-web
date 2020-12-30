# frozen_string_literal: true

class Beacon
  include Mongoid::Document
  store_in collection: 'appData'

  field :people_count, type: String
  field :time, type: String
  field :beacon_Id, type: String
end
