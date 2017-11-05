# @Author: Esteban GONZALEZ <esteban>
# @Date:   Sunday, November 5th 2017, 6:44:18 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Sunday, November 5th 2017, 6:50:30 pm
module Cryptowatch
  module Utils
    def self.format_time_elapsed(start, finish)
      return distance_of_time_in_words((finish - start) * 1000.0)
    end
  end
end
