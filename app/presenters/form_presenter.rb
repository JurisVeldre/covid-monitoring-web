# frozen_string_literal: true

class FormPresenter < ApplicationPresenter
  attr_reader :form

  def initialize(form:)
    @form = form
  end

  def institutions_link
    url_helpers.institutions_path
  end

  def institution_link(institution)
    url_helpers.institution_path(institution)
  end
end
