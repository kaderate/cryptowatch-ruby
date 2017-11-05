# @Author: Esteban GONZALEZ <esteban>
# @Date:   Wednesday, November 1st 2017, 9:26:19 am
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Sunday, November 5th 2017, 2:29:17 pm
require 'rest-client'
require 'logger'
require 'json'

module Cryptowatch
  class RestClientAdapter

    attr_accessor :options
    attr_accessor :logger

    def initialize (options)
      @options = options
    end

    def get (*elements)

      if (elements.size == 0)
        logger.error(Messages::ERROR_NO_URL)
        return nil
      end
      url = Api::format_url(*elements)
      begin
        answer = JSON.parse(RestClient::Request.execute(
          method: :get,
          url: url,
          timeout: @options[:timeout]),
          accept: :json
        )

        if answer.has_key? :result
          #todo here, because this condition is never executed (directly in rescue)
          logger.error("(#{url}): #{answer.error}")
        end
        return answer
      rescue SocketError => e
        logger.error("(#{url}): #{e.message}")
      rescue RestClient::ExceptionWithResponse => e
        logger.error("(#{url}): #{e.message}")
      end
    end
  end
end
