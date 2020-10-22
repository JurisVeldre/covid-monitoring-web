# frozen_string_literal: true

class InstitutionsController < ApplicationController
  def index
    @presenter = Institutions::IndexPresenter.new(Institution.all)
  end

  def show
    institution = Institution.find(params[:id])

    @presenter = Institutions::ShowPresenter.new(institution)
  end
end
