# frozen_string_literal: true
require 'net/http'
require "json"

require 'cloudflare/purge/api_version'
require 'cloudflare/purge/configuration'
require 'cloudflare/purge/purge_all_file'
require 'cloudflare/purge/purge_file_by_url'

module Cloudflare
  module Purge
    class Client
      include Cloudflare::Purge::PurgeAllFile

      attr_reader :config
  
      def initialize
        raise ArgumentError, "block not given" unless block_given?
  
        @config = Cloudflare::Purge::Configuration.new
        yield config
      end
    end  
  end
end
