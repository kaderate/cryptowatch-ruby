# @Author: Esteban GONZALEZ <esteban>
# @Date:   Wednesday, November 1st 2017, 9:26:19 am
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Sunday, November 5th 2017, 7:11:00 pm

require 'rest-client'
require 'logger'
require 'json'

module Cryptowatch
  class RestClientAdapter

    attr_accessor :options

    def initialize (options)
      @options = options
    end

    def get (*elements)

      if (elements.size == 0)
         Messages::LOG.error(Messages::ERROR_NO_URL)
        return nil
      end

      url = Api::format_url(*elements)

      begin
        milli_start = Time.now
        answer = JSON.parse(RestClient::Request.execute(
          method: :get,
          url: url,
          timeout: @options[:timeout]),
          accept: :json
        )
        milli_end = Time.now
        elapsed   = Utils::time_elapsed(milli_start, milli_end)
        Messages::LOG.info("[#{elapsed.round} ms] #{Messages::GET}'#{url}'")
        return answer
      rescue SocketError, RestClient::ExceptionWithResponse => e
        Messages::LOG.error("'#{e.message}' on => #{url}")
      end
    end
  end
end
