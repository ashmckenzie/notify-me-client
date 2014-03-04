# coding: utf-8

require 'uri'
require 'net/http'
require 'json'

module NotifyMeClient
  class Notifier

    def initialize api_key, app_name='default'
      @api_key = api_key
      @app_name = app_name
    end

    def notify! title, message
      data = { api_key: api_key, title: title, message: message }
      Response.new(request(data))
    end

    private

      attr_reader :api_key, :app_name

      def request data
        request = Net::HTTP::Post.new(uri.request_uri)
        request.set_form_data(data)
        http.request(request)
      end

      def http
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        http
      end

      def uri
        @uri ||= begin
          uri = "%s/%s/%s" % [ BASE_URI, api_key, app_name ]
          URI.parse(uri)
        end
      end

  end
end
