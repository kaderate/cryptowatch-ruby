# @Author: Esteban GONZALEZ <esteban>
# @Date:   Tuesday, October 31st 2017, 10:29:25 am
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Sunday, November 5th 2017, 5:24:13 pm

require 'rubygems'
require 'test/unit'
require 'rest-client'
require 'cryptowatch'

class TestRequests < Test::Unit::TestCase
  attr_accessor :r

  def test_requests
    wrapper = Cryptowatch::Wrapper.new;

    wrapper.get(Cryptowatch::Markets::index)
    wrapper.get(Cryptowatch::Markets::price(:kraken, :btc))
  end

end
