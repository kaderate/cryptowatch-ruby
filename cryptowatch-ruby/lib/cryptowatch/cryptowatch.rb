# @Author: Esteban GONZALEZ <Esteban>
# @Date:   Tuesday, October 17th 2017, 8:39:43 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Wednesday, November 1st 2017, 8:00:14 pm

require "rubygems"

require "cryptowatch/version"
require "cryptowatch/api/api"
require "cryptowatch/cryptowatch"
require "cryptowatch/adapter/rest_client_adapter"

module Cryptowatch
  class Cryptowatch

    attr_accessor :rest_adapter

    def initialize(options = {:timeout => 5})
      @rest_adapter = RestClientAdapter.new(options)
    end

    def assets (currency = '')
      puts Api::API_ASSETS_URL
      return @rest_adapter.get Api::format_url(Api::API_ASSETS_URL, currency)
    end

    def price (market, pair)
      return @rest_adapter.get Api::format_url(Api::API_MARKETS_URL, market, pair, :price);
    end


    #puts Cryptowatch.new({:timeout => 1000}).currencies(:btc, :eth).market(:kraken, :poloniex).execute()


    def execute

    end

  end
end
