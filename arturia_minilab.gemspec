# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arturia_minilab/version'

Gem::Specification.new do |spec|
  spec.name          = "arturia_minilab"
  spec.version       = ArturiaMinilab::VERSION
  spec.authors       = ["Julian Cheal"]
  spec.email         = ["julian.cheal@gmail.com"]

  spec.summary       = %q{Arturia Minilab Midi controller gem}
  spec.description   = %q{Ruby gem for Arturia Minilab Midi controller}
  spec.homepage      = "http://github.com/juliancheal"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"

spec.add_dependency "micromidi"
  spec.add_dependency "unimidi", "~> 0.4.6"
end
