# @Author: Esteban GONZALEZ <esteban>
# @Date:   Sunday, November 5th 2017, 6:44:18 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Sunday, November 5th 2017, 7:05:20 pm
module Cryptowatch
  module Utils
    def self.time_elapsed(start, finish)
      return ((finish - start) * 1000.0)
    end
  end
end
