# frozen_string_literal: true

module Institutions
  class ShowPresenter < ApplicationPresenter
    attr_reader :institution

    def initialize(institution)
      @institution = institution
    end

    def institutions_link
      url_helpers.institutions_path
    end

    def institution_link(institution)
      url_helpers.institution_path(institution)
    end
  end
end
