# Cryptowatch Wrapper in Ruby

A simple API wrapper for Cryptowatch written in Ruby.

Cryptowat.ch documentation: API: https://cryptowat.ch/docs/

## Get started

### Installation

```
gem install 'cryptowatch'
```

Require the gem into your project with:
```
require 'cryptowatch'
```

## An example

```ruby
require 'cryptowatch'

class MyApplication
  wrapper = Cryptowatch::Wrapper.new

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
```

