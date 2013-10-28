require "ostruct"

module Travelport
  class Configuration
    def self.method_missing(*args)
      config.send *args
    end
  
    private
  
    def self.config
      @@config ||= OpenStruct.new
    end
  end

  def self.configure(&block)
    block.call(Configuration)
  end  
end
