# -*- encoding: utf-8 -*-
require File.expand_path('../lib/travelport-rb/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nicholas Zaillian"]
  gem.email         = ["nzaillian@gmail.com"]
  gem.description   = %q{A travelport.com API wrapper for Ruby, built on Savon 2}
  gem.summary       = %q{Provides a simple interface to the travelport.com API for travel listings and booking}
  gem.homepage      = "https://github.com/nzaillian/travelport-rb"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "travelport"
  gem.require_paths = ["lib", "vendor/gems/savon/lib"]
  gem.version       = TravelportRb::VERSION

  gem.add_development_dependency("bundler")
  gem.add_development_dependency("rake")
  gem.add_development_dependency("rspec")
  gem.add_development_dependency("vcr")

  gem.add_dependency("activesupport")
  gem.add_dependency("activemodel")
  
  gem.add_dependency("savon", "2.3.0")
end
