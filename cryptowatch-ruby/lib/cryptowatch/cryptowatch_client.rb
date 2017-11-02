# @Author: Esteban GONZALEZ <esteban>
# @Date:   Thursday, November 2nd 2017, 9:48:46 am
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Thursday, November 2nd 2017, 10:44:13 am
module Cryptowatch
  class CWClient

    attr_accessor :rest_adapter

    def initialize(options = {:timeout => 5})
      @rest_adapter = RestClientAdapter.new(options)
    end

    #ASSETS
    #():             Returns all assets (in no particular order).
    #(asset_id):     Lists all markets which have this asset as a base or quote.
    def assets(asset = nil)
      return @rest_adapter.get(Api::API_ASSETS_URL, asset)
    end

    #PAIRS
    #():             Returns all pairs (in no particular order).
    #(pair_id):      Returns a single pair. Lists all markets for this pair.
    def pairs (pair = nil)
      return @rest_adapter.get(Api::API_PAIRS_URL, pair)
    end

    #EXCHANGES
    #():             Returns a list of all supported exchanges.
    #(market):       Returns a single exchange, with associated routes.
    def exchanges (market = nil)
      return @rest_adapter.get(Api::API_EXCHANGES_URL, market)
    end

    #MARKETS
    #():              Returns a list of all supported markets.
    #(market, pair):  Returns a single market, with associated routes.

    def markets (market = nil, pair = nil)
      return @rest_adapter.get(Api::API_MARKETS_URL, market, pair)
    end

    #(market, pair):  Returns
    def price (market = nil, pair = nil)
      return @rest_adapter.get(Api::API_MARKETS_URL, market, pair, :price)
    end

  end
end
