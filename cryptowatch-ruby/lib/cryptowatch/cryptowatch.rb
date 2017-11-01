# @Author: Esteban GONZALEZ <Esteban>
# @Date:   Tuesday, October 17th 2017, 8:39:43 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Wednesday, November 1st 2017, 2:03:20 am

require "rubygems"
require "cryptowatch/version"
require "cryptowatch/api/api"
require "cryptowatch/cryptowatch"

module Cryptowatch
  class Cryptowatch

    attr_accessor :options

    def initialize(options = {:timeout => 500})
      @options = options
    end

    def price(*currencies)
      puts currencies.size
    end
  end
end
