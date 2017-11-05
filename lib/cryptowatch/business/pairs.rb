# @Author: Esteban GONZALEZ <esteban>
# @Date:   Sunday, November 5th 2017, 12:45:58 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Sunday, November 5th 2017, 2:29:20 pm

module Cryptowatch
  module Pairs

    API_URL = "#{Api::API_BASE_URL}/pairs"

    def self.index
      return API_URL
    end

    def self.pair(pair)
      return Api::format_url(API_URL, pair)
    end

  end
end
