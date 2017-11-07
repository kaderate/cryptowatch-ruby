# @Author: Esteban GONZALEZ <Esteban>
# @Date:   Tuesday, October 17th 2017, 8:39:43 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Sunday, November 5th 2017, 6:49:39 pm

require "rubygems"

require "cryptowatch/version"
require "cryptowatch/api/api"
require "cryptowatch/messages"
require "cryptowatch/utils"
require "cryptowatch/wrapper"
require "cryptowatch/adapter/rest_client_adapter"


require "cryptowatch/business/assets"
require "cryptowatch/business/exchanges"
require "cryptowatch/business/markets"
require "cryptowatch/business/pairs"

module Cryptowatch
  module Api
  end
end
