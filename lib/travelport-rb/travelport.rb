require "savon"

def require_all(rel_path)
  root = File.expand_path("..", __FILE__)
  Dir["#{root}/#{rel_path}/**.*"].each { |f| require f }
end

module Travelport
end

require "configuration"
require_all "models"
