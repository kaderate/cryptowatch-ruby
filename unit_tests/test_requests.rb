# @Author: Esteban GONZALEZ <esteban>
# @Date:   Tuesday, October 31st 2017, 10:29:25 am
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Monday, November 6th 2017, 1:09:28 pm
require 'cryptowatch'

class MyApplication
  include Cryptowatch

    wrapper   = Wrapper.new;

    wrapper.get(Assets::index)
    wrapper.get(Assets::asset(:btc))

    wrapper.get(Exchanges::index)
    wrapper.get(Exchanges::exchange(:kraken))

    wrapper.get(Markets::index)
    wrapper.get(Markets::price(:kraken, :btcusd))
    wrapper.get(Markets::summary(:gdax, :btceur))
    wrapper.get(Markets::trades(:poloniex, :ethbtc))
    wrapper.get(Markets::orderbook(:kraken, :xrpbtc))
    wrapper.get(Markets::ohlc(:kraken, :xrpbtc))

    wrapper.get(Pairs::index)
    wrapper.get(Pairs::pair(:btcusd))
end
