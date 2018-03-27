require 'spec_helper'

RSpec.describe Cryptowatch::Wrapper, :vcr do
  subject { Cryptowatch::Wrapper.new() }

  describe '#new' do
    it 'returns a wrapper instance' do
      expect(subject).not_to be nil
    end
  end

end
