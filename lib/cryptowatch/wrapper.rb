# @Author: Esteban GONZALEZ <esteban>
# @Date:   Thursday, November 2nd 2017, 9:48:46 am
# @Email:  gonzal_e@etna-alternance.net
# @Project: RubyCryptowatch
# @Last modified by:   esteban
# @Last modified time: Monday, November 6th 2017, 1:07:49 pm

require 'cryptowatch'

module Cryptowatch
  class Wrapper

    attr_accessor :rest_adapter

    def initialize(options = nil)
      if options == nil
        options = {
          :timeout            => 5,
          :display_infos      => true,
          :display_errors     => true
        }
      end
      @rest_adapter = RestClientAdapter.new(options)
    end

    def get(url)
      return @rest_adapter.get(url)
    end

  end
end
