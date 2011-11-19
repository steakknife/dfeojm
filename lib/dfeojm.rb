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
      check
    end

    # Go fetch the status document.
    def check
      result = false
      @doc = Nokogiri::HTML(open('http://www.downforeveryoneorjustme.com/'+site))
      @doc.css('div#container').each do |dom|
        result = dom.content.index 'is up'
      end
      result
    end

    # Return a human-friendly representation.
    def to_s()
      "#{site} #{check ? 'is up' : 'looks down'}"
    end
  end # class DFEOJM
end # module DFEOJM
