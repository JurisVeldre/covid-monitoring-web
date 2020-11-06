# frozen_string_literal: true

class InstitutionsController < ApplicationController
  def index
    @presenter = Institutions::IndexPresenter.new(Institution.all)
  end

  def show
    institution = Institution.find(params[:id])

    @presenter = Institutions::ShowPresenter.new(institution)
  end

  def new
    institution = Institution.new

    @presenter = FormPresenter.new(form: institution)
  end

  def create
    institution = Institution.new

    if institution.update(create_params)
      redirect_to institutions_path
    else
      redirect_to 'new'
    end
  end

  private

  def create_params
    params.require(:institution).permit(:name)
  end
end
