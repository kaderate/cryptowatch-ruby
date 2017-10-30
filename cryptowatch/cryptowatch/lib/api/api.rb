# @Author: Esteban GONZALEZ <Esteban>
# @Date:   Tuesday, October 17th 2017, 9:32:56 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   Esteban
# @Last modified time: Tuesday, October 17th 2017, 11:07:21 pm

module Cryptowatch
  module Api

    API_BASE_URL      = "https://api.cryptowat.ch"
    API_ASSETS_URL    = "#{API_BASE_URL}/assets"
    API_PAIRS_URL     = "#{API_BASE_URL}/pairs"
    API_EXCHANGES_URL = "#{API_BASE_URL}/exchanges"
    API_MARKETS_URL   = "#{API_BASE_URL}/markets"

    def get_version
        return RestClient.get 'http://localhost:12345'
    end
  end
end
