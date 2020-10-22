# frozen_string_literal: true

class Institution
  include Mongoid::Document

  field :name, type: String

  has_many :rooms, dependent: :destroy

  validates :name, presence: true
end
