# frozen_string_literal: true

class ApplicationPresenter
  def url_helpers
    Rails.application.routes.url_helpers
  end
end
