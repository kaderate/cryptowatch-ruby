# @Author: Esteban GONZALEZ <Esteban>
# @Date:   Tuesday, October 17th 2017, 9:32:56 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Sunday, November 5th 2017, 12:44:20 pm

module Cryptowatch
  module Api

    API_BASE_URL      = "https://api.cryptowat.ch"

    def self.format_url(*args)
      return (args[1] == nil) ? (args.join '') : (args.join'/')
    end

  end
end
