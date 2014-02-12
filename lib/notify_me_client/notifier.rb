# coding: utf-8

require 'uri'
require 'net/http'
require 'json'

module NotifyMeClient
  class Notifier

    def initialize api_key
      @api_key = api_key
    end

    def notify! title, message
      data = { api_key: api_key, title: title, message: message }

      Response.new(Net::HTTP.post_form(uri, data))
    end

    private

      attr_reader :api_key

      def uri
        @uri ||= URI.parse(BASE_URI)
      end

  end
end
