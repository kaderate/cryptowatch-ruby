# @Author: Esteban GONZALEZ <esteban>
# @Date:   Tuesday, October 31st 2017, 11:05:52 am
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Wednesday, November 1st 2017, 11:50:47 pm
# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cryptowatch/version'

Gem::Specification.new do |gem|
  gem.name          = 'cryptowatch'
  gem.version       =  Cryptowatch::Api::VERSION_FORMAT
  gem.date	       	= '2017-10-31'
  gem.authors       = ["Esteban Gonzalez"]
  gem.summary       = 'Simple Cryptowat.ch interface in Ruby.'
  gem.description	  = 'Simple interface in Ruby to facilite the use Cryptowatch.'
  gem.email         = 'gonzal_e@etna-alternance.net'
  gem.homepage		  = 'https://github.com/estebgonza/Cryptowatch'
  gem.require_paths = ['lib']
  gem.licenses      = ['MIT']
  gem.files         = Dir.glob("lib/**/*.rb")
end
