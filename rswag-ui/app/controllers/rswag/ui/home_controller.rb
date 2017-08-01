module Rswag
  module Ui
    class HomeController < ActionController::Base

      def index
        @swagger_endpoints = Rswag::Ui.config.swagger_endpoints
        @json_editor = Rswag::Ui.config.json_editor
        @show_request_headers = Rswag::Ui.config.show_request_headers
        render :index, layout: false
      end
    end
  end
end
