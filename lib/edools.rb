require 'json'
require 'faraday'

require 'edools/version'
require 'edools/middlewares/hash_response'
require 'edools/config'
require 'edools/api_base_request'
require 'edools/school'

module Edools
  class << self
    attr_accessor :config
  end

  def self.configure(api_key = nil, base_uri = nil)
    @config ||= Edools::Config.new(api_key, base_uri)

    yield(config) if block_given?
  end
end