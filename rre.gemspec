# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rre/version'

Gem::Specification.new do |spec|
  spec.name          = "rre"
  spec.version       = Rre::VERSION
  spec.authors       = ["Hao Wei"]
  spec.email         = ["imwillmouse@gmail.com"]
  spec.description   = %q{simple rename script}
  spec.summary       = %q{simple rename sciprt}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.0"
end
