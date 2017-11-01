# @Author: Esteban GONZALEZ <esteban>
# @Date:   Tuesday, October 31st 2017, 10:29:25 am
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Wednesday, November 1st 2017, 2:03:37 am

require 'rubygems'
require 'rest-client'
require 'cryptowatch/cryptowatch'
require 'cryptowatch/version'
require 'cryptowatch/api/api'

puts Cryptowatch::Cryptowatch.new({:timeout => 100}).price(:btc, :eth, :xrp)
#puts Cryptowatch.new({timeout: 100}).price(:btc, :eth);
