# frozen_string_literal: true

module Institutions
  class RoomsController < ApplicationController
    before_action :authenticate_user!

    def show
      room = Institutions::Room.find(id: params[:id])

      @presenter = Rooms::ShowPresenter.new(room)
    end

    def new
      institution = Institution.find(params[:institution_id])
      room = Institutions::Room.new(institution: institution)

      @presenter = FormPresenter.new(form: room)
    end

    def create
      institution = Institution.find(params[:institution_id])
      room = Institutions::Room.new(institution: institution)

      if room.update(create_params)
        redirect_to institution_room_path(institution_id: institution.id, id: room.id)
      else
        redirect_to 'new'
      end
    end

    private

    def create_params
      params.require(:institutions_room).permit(:name, :sensor_id)
    end
  end
end
