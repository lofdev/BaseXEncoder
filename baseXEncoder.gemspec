# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'baseXEncoder/version'

Gem::Specification.new do |spec|
  spec.name          = "baseXEncoder"
  spec.version       = BaseXEncoder::VERSION
  spec.authors       = ["Dave Loftis"]
  spec.email         = ["dave@lofdev.com"]
  spec.description   = ["A gem to handle arbitrary base encoding of Integer numbers.  Useful for obfuscating ID continuity for public pages."]
  spec.summary       = ["A gem to handle arbitrary base encoding of Integer numbers.  Useful for obfuscating ID continuity for public pages."]
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 2.6"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
