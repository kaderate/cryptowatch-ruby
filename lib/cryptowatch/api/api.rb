# @Author: Esteban GONZALEZ <Esteban>
# @Date:   Tuesday, October 17th 2017, 9:32:56 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Sunday, November 5th 2017, 6:42:01 pm

module Cryptowatch
  module Api

    API_BASE_URL      = "https://api.cryptowat.ch"

    def self.format_url(*args)
      args -= [nil]
      return args.join'/'
    end

  end
end
