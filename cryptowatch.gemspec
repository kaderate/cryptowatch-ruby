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
  gem.email         = 'akettal@users.noreply.github.com'
  gem.homepage		  = 'https://github.com/akettal/cryptowatch-ruby'
  gem.require_paths = ['lib/cryptowatch']
  gem.licenses      = ['MIT']

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|gem|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 1"
  gem.add_development_dependency "rest-client", '~> 2.0'
  gem.add_development_dependency "rspec", '~> 3.7', '>= 3.7.0'
  gem.add_development_dependency "faker", '~> 1.8', '>= 1.8.7'
  gem.add_development_dependency "vcr", "~> 3.0"
  gem.add_development_dependency "rake", "~> 10.0"
  gem.add_development_dependency "webmock", '~> 0'
  gem.add_development_dependency "byebug", '~> 0'
end
