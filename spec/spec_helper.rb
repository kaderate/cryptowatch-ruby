$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require_relative '../lib/cryptowatch'
require 'bundler/setup'

require 'ostruct'
require 'faker'
require 'webmock/rspec'
require 'vcr'

Bundler.setup

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
end

WebMock.allow_net_connect!

RSpec.configure do |config|
  config.around(:each) do |ex|
    if ex.metadata.key?(:vcr)
      ex.run
    else
      VCR.turned_off { ex.run }
    end
  end
end

RSpec::Matchers.define :a_hash_with_keys do |expected|
  match do |actual|
    return false unless actual.is_a?(Hash)
    expected.all?{|key| actual.key?(key) }
  end
end
