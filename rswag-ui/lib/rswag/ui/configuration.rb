require 'ostruct'

module Rswag
  module Ui
    class Configuration
      attr_reader :swagger_endpoints
      attr_accessor :json_editor, :show_request_headers

      def initialize
        @swagger_endpoints = []
        @json_editor = false
        @show_request_headers = false
      end

      def swagger_endpoint(path, title)
        @swagger_endpoints << OpenStruct.new(path: path, title: title)
      end
    end
  end
end
