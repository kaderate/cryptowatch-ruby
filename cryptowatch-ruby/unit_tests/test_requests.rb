# @Author: Esteban GONZALEZ <esteban>
# @Date:   Tuesday, October 31st 2017, 10:29:25 am
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Thursday, November 2nd 2017, 6:42:40 pm

require 'rubygems'
require 'test/unit'
require 'rest-client'
require 'cryptowatch'

class TestRequests < Test::Unit::TestCase

  attr_accessor :r

  def test_requests
    r = Cryptowatch::Client.new({:timeout => 3})

    r.assets		                #Returns all assets (in no particular order).
    r.assets(:btc)              #Lists all markets which have this asset as a base or quote.

    r.pairs		                  #Returns all pairs (in no particular order).
    r.pairs(:btcusd)	          #Returns a single pair. Lists all markets for this pair.

    r.exchanges		              #Returns a list of all supported exchanges.
    r.exchanges(:kraken)	      #Returns a single exchange, with associated routes.

    r.markets		                #Returns a list of all supported markets.
    r.markets(:kraken, :btcusd) #Returns a single market, with associated routes.

    r.price(:kraken, :btcusd)
 end

end
