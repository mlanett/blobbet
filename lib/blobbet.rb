require "active_record"
require "blobbet/version"
require "json"

module Blobbet

  module Meta
    # @param options may include "blob"
    # @option in which blob to use for the attribute, default "extras"
    def blobbet( *attributes )
      opt = Hash === attributes.last ? attributes.pop : {}
      bin = opt[:blob] ? opt[:blob].to_s : "extras"
      attributes.each do |attribute|
        name = attribute.to_s
        define_method( name.to_sym ) do
          map = self[bin] ? JSON.parse(self[bin]) : {}
          map[name]
        end
        define_method( "#{name}=".to_sym ) do |value|
          map = self[bin] ? JSON.parse(self[bin]) : {}
          if value.nil? then
            map.delete(name)
          else
            map[name] = value
          end
          self[bin] = map.to_json
        end
      end
    end
  end

  def self.included(by)
    by.send( :extend, Meta )
  end

end
