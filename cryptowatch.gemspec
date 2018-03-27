# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cryptowatch/version'

Gem::Specification.new do |gem|
  gem.name          = 'cryptowatch-ruby'
  gem.version       =  Cryptowatch::Api::VERSION_FORMAT
  gem.date	       	= '2018-03-27'
  gem.authors       = ["Abdelkader K"]
  gem.summary       = 'Cryptowat.ch API wrapper written in Ruby.'
  gem.description	  = 'A simple API wrapper in Ruby to facilite the use of Cryptowat.ch'
  gem.email         = 'noone@github.com'
  gem.homepage		  = 'https://github.com/akettal/Cryptowatch'
  gem.require_paths = ['lib/cryptowatch']
  gem.licenses      = ['MIT']

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|gem|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rest-client", '~> 1.7.3'
end
