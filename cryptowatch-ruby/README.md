# Cryptowatch Library for Ruby

Developpement of *a simple interface in Ruby for Cryptowatch.*

To describe the use of the methods I used the phrases of the Cryptowat.ch documentation: API: https://cryptowat.ch/docs/

## Get started

Install it yourself as:
```
gem install 'cryptowatch'
```
Require the gem into your project with:
```
require 'cryptowatch'
```
## Requests list
Let's construct or first request with the gem:
```ruby
cw = Cryptowatch::Client.new({:timeout => 10}) #By default timeout = 5.

cw.assets		       #Returns all assets (in no particular order).
cw.assets(:btc)		       #Lists all markets which have this asset as a base or quote.

cw.pairs		       #Returns all pairs (in no particular order).
cw.pairs(:btcusd)	       #Returns a single pair. Lists all markets for this pair.

cw.exchanges		       #Returns a list of all supported exchanges.
cw.exchanges(:kraken)	       #Returns a single exchange, with associated routes.

cw.markets		       #Returns a list of all supported markets.
cw.markets(:kraken, :btcusd)   #Returns a single market, with associated routes.

#In writing...
```