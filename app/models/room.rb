# frozen_string_literal: true

class Room
  include Mongoid::Document

  field :name, type: String
  field :institution_id, type: String

  belongs_to :institution
  has_many :measurements, dependent: :destroy

  validates :name, :institution_id, presence: true
end