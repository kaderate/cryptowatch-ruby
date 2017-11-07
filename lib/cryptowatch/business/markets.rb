# @Author: Esteban GONZALEZ <esteban>
# @Date:   Sunday, November 5th 2017, 1:39:50 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Sunday, November 5th 2017, 6:40:33 pm

module Cryptowatch
  module Markets

    API_URL = "#{Api::API_BASE_URL}/markets"
    ROUTES = [
      :price,     #Returns a market’s last price.
      :summary,   #Other stats based on a 24-hour sliding window.
      :orderbook, #Returns a market’s order book.
      :trades,    #Returns a market’s most recent trades, incrementing chronologically.
      :ohlc       #Returns a market’s OHLC candlestick data.
    ]

    def self.index
      return API_URL
    end

    def self.market(exchange)
      return Api::format_url(API_URL, exchange)
    end

    def self.market(exchange, asset, route = nil)
      if (route != nil && !ROUTES.include?(route))
        Messages::LOG.error(Messages::ERROR_UNKNOW_MARKET_ROUTE)
      else
        return Api::format_url(API_URL, exchange, asset, route)
      end
    end

    def self.price(exchange, asset)
      return self.market(exchange, asset, :price)
    end

    def self.summary(exchange, asset)
      return self.market(exchange, asset, :summary)
    end

    def self.orderbook(exchange, asset)
      return self.market(exchange, asset, :orderbook)
    end

    def self.trades(exchange, asset)
      return self.market(exchange, asset, :trades)
    end

    def self.ohlc(exchange, asset)
      return self.market(exchange, asset, :ohlc)
    end

  end
end
