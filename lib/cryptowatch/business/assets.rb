# @Author: Esteban GONZALEZ <esteban>
# @Date:   Sunday, November 5th 2017, 12:31:59 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Sunday, November 5th 2017, 2:29:23 pm

module Cryptowatch
  module Assets

    API_URL = "#{Api::API_BASE_URL}/assets"

    def self.index
      return API_URL
    end

    def self.asset(asset)
      return Api::format_url(API_URL, asset)
    end

  end
end
