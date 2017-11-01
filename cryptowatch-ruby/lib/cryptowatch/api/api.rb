# @Author: Esteban GONZALEZ <Esteban>
# @Date:   Tuesday, October 17th 2017, 9:32:56 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Wednesday, November 1st 2017, 1:46:55 am
require 'rest-client'

module Cryptowatch
  module Api

    API_BASE_URL      = "https://api.cryptowat.ch"
    API_ASSETS_URL    = "#{API_BASE_URL}/assets"
    API_PAIRS_URL     = "#{API_BASE_URL}/pairs"
    API_EXCHANGES_URL = "#{API_BASE_URL}/exchanges"
    API_MARKETS_URL   = "#{API_BASE_URL}/markets"

    def revision
      puts "ccccccccccc"
    end
  end
end
