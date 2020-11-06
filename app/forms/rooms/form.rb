# frozen_string_literal: true

module Rooms
  class Form < ApplicationModelForm
    self.object_class_name = 'Room'

    delegate :name, :institution, :measurements, to: :object
  end
end
