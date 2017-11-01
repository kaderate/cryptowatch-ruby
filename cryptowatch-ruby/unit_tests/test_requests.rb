# @Author: Esteban GONZALEZ <esteban>
# @Date:   Tuesday, October 31st 2017, 10:29:25 am
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Thursday, November 2nd 2017, 12:23:33 am

require 'rubygems'
require 'rest-client'
require 'cryptowatch'
require 'cryptowatch/version'
require 'cryptowatch/api/api'
require 'test/unit'

class TestRequests < Test::Unit::TestCase

  attr_accessor :requester

  def test_requests
    requester = Cryptowatch::Cryptowatch.new({:timeout => 3})
    requester.assets
 end

end
