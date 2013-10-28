$:.unshift File.expand_path("../../lib/travelport-rb", __FILE__)

require "travelport"

require_relative "./config"

puts Travelport::Configuration.username