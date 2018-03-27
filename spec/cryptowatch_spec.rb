require 'spec_helper'

RSpec.describe Cryptowatch do
  describe 'Cryptowatch gem' do
    it 'has an API version number' do
      expect(Cryptowatch::Api::VERSION).not_to be nil
    end
  
    it 'has a wrapper module' do
      expect(Cryptowatch::Wrapper).not_to be nil
    end
  end

end
