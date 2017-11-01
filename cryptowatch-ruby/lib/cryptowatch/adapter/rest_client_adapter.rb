# @Author: Esteban GONZALEZ <esteban>
# @Date:   Wednesday, November 1st 2017, 9:26:19 am
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Wednesday, November 1st 2017, 10:35:55 pm
require 'rest-client'
require 'logger'
require 'json'

module Cryptowatch
  class RestClientAdapter

    attr_accessor :options
    attr_accessor :logger

    def initialize (options)
      @options = options
      @logger  = Logger.new(STDOUT)
    end

    def get (*elements)
      if (elements.size == 0)
        logger.error("Can not execute a 'GET' request without url.")
        return nil
      end
      url = Api::format_url(*elements)
      puts url
      begin
        answer = JSON.parse(RestClient::Request.execute(
          method: :get,
          url: url,
          timeout: @options[:timeout])
        )

        if answer.has_key? :result
          #todo here, because this condition is never executed (directly in rescue)
          logger.error("(#{url}): #{answer.error}")
        end
        return answer
      rescue SocketError => e
        logger.error("(#{url}): #{e.message}")
      rescue RestClient::ExceptionWithResponse => e
        logger.error("(OTHER#{url}): #{e.message}")
      end
    end
  end
end
