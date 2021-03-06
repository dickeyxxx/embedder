# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'embedder'

Gem::Specification.new do |spec|
  spec.name          = "embedder"
  spec.version       = Embedder::VERSION
  spec.authors       = ["dickeyxxx"]
  spec.email         = ["jeff@dickey.xxx"]
  spec.description   = %q{Finds info about urls}
  spec.summary       = %q{Parses the oembed data from a site}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 0.8"
  spec.add_dependency "faraday_middleware", "~> 0.9"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
