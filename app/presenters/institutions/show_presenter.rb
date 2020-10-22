# frozen_string_literal: true

module Institutions
  class ShowPresenter < ApplicationPresenter
    attr_reader :institution

    def initialize(institution)
      @institution = institution
    end
  end
end
