# @Author: Esteban GONZALEZ <esteban>
# @Date:   Sunday, November 5th 2017, 12:55:04 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Sunday, November 5th 2017, 2:44:21 pm

module Cryptowatch
  module Exchanges

    API_URL = "#{Api::API_BASE_URL}/exchanges"

    def self.index
      return API_URL
    end

    def self.exchange(exchange)
      return Api::format_url(API_URL, exchange)
    end

  end
end
