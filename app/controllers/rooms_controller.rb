# frozen_string_literal: true

class RoomsController < ApplicationController
  def show
    room = Room.find(params[:id])

    @presenter = Rooms::ShowPresenter.new(room)
  end
end
