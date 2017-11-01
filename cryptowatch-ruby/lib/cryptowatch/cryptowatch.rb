# @Author: Esteban GONZALEZ <Esteban>
# @Date:   Tuesday, October 17th 2017, 8:39:43 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Wednesday, November 1st 2017, 11:41:37 pm

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

    #ASSETS
    #():             Returns all assets (in no particular order).
    #(asset_id):     Lists all markets which have this asset as a base or quote.
    def assets(asset: nil)
      puts "test-de ouf"
      return @rest_adapter.get (Api::API_ASSETS_URL, asset)
    end

    #PAIRS
    #():             Returns all pairs (in no particular order).
    #(pair_id):      Returns a single pair. Lists all markets for this pair.
    def pairs (pair: nil)
      return @rest_adapter.get (Api::API_PAIRS_URL, pair)
    end

    #EXCHANGES
    #():             Returns a list of all supported exchanges.
    #(market):       Returns a single exchange, with associated routes.
    def exchanges (market: nil)
      return @rest_adapter.get (Api::API_EXCHANGES_URL, market)
    end

    #MARKETS
    #():             Returns a list of all supported markets.
    #(market, pair): Returns a single market, with associated routes.

    def markets (market: nil, pair: nil)
      return @rest_adapter.get (Api::API_MARKETS_URL, market, pair)
    end

    def pairs (market: nil, pair: nil)
      return @rest_adapter.get (Api::API_MARKETS_URL, market, pair, :price)
    end

    #TODO Searching
    #puts Cryptowatch.new({:timeout => 1000}).currencies(:btc, :eth).market(:kraken, :poloniex).execute()
  end
end
