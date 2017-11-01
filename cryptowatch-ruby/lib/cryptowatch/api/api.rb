# @Author: Esteban GONZALEZ <Esteban>
# @Date:   Tuesday, October 17th 2017, 9:32:56 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Wednesday, November 1st 2017, 8:05:32 pm
require 'cryptowatch/adapter/rest_client_adapter'

module Cryptowatch
  module Api

    API_BASE_URL      = "https://api.cryptowat.ch"
    API_ASSETS_URL    = "#{API_BASE_URL}/assets"
    API_PAIRS_URL     = "#{API_BASE_URL}/pairs"
    API_EXCHANGES_URL = "#{API_BASE_URL}/exchanges"
    API_MARKETS_URL   = "#{API_BASE_URL}/markets"

    def self.format_url(*args)
      return (args.size > 1 && !args[1].empty?) ? (args.join '/') : (args.join'')
    end
  end
end
