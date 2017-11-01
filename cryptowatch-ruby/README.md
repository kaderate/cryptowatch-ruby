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
cw = Cryptowatch.new({:timeout => 10}) #By default timeout = 5.

puts cw.assets #Returns all assets (in no particular order).
puts cw.assets(:btc) #Lists all markets which have this asset as a base or quote.
puts cw.price(:kraken, :btcusd) #return currency's price for (MARKET_NAME, PAIR_NAME)
(in writing)
```