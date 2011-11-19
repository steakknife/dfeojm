#!/usr/bin/env ruby

# External runtime dependencies
require 'nokogiri'
require 'trollop'

# System libraries
require 'open-uri'

module DFEOJM
  class DFEOJM
    attr_reader :site

    def initialize(site)
      # Remove the protocol part
      @site = site.gsub(/.*:\/\//, '')
    end

    def down?
      ! up?
    end

    def up?
      _check
    end

    # Return a human-friendly representation.
    def to_s()
      "#{site} #{up? ? 'is up' : 'looks down'}"
    end
    private

    def _check
      if @result.nil?
        _actual_check
      end
      @result
    end

    def _actual_check
      @doc = Nokogiri::HTML(open('http://www.downforeveryoneorjustme.com/'+site))
      @doc.css('div#container').each do |dom|
        @result = ! dom.content.index('is up').nil?
      end
    end
  end # class DFEOJM
end # module DFEOJM
