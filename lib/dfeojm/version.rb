module DFEOJM
  VERSION = '0.0.2'

  def self.bump_revision
    found = false
    File.rewrite(__FILE__).each do |line|
      # retain the major and minor version, but increment the release.
      line.sub(/([0-9]*\.[0-9]*\.)([0-9]*).*$/) { found = true ; $1 + "#{$2.to_i+1}" } unless found
    end
  end
end
