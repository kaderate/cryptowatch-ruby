# @Author: Esteban GONZALEZ <esteban>
# @Date:   Sunday, November 5th 2017, 2:26:39 pm
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Sunday, November 5th 2017, 7:39:39 pm
require 'logger'

module Cryptowatch
  module Messages

    LOG = Logger.new(STDOUT)

    GET                       = "GET => "
    ERROR_NO_URL              = "Can not execute a 'GET' request without url."
    ERROR_UNKNOW_MARKET_ROUTE = "Unknow route: "

  end
end
