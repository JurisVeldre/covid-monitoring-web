# frozen_string_literal: true

module Institutions
  class IndexPresenter < ApplicationPresenter
    attr_reader :institutions

    def initialize(institutions)
      @institutions = institutions
    end
  end
end
