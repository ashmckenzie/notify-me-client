# coding: utf-8

module NotifyMeClient
  class Response

    SUCCESS_CODE = 200

    attr_reader :response

    def initialize response
      @response = response
    end

    def success?
      code == SUCCESS_CODE
    end

    def code
      response.code.to_i
    end

    def messages
      body['messages']
    end

    def took
      body['took']
    end

    def body
      JSON.parse(response.body)
    end
  end
end
