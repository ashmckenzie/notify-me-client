# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'notify_me_client/version'

Gem::Specification.new do |spec|
  spec.name          = "notify-me-client"
  spec.version       = NotifyMeClient::VERSION
  spec.authors       = ["Ash McKenzie"]
  spec.email         = ["ash@greenworm.com.au"]
  spec.summary       = %q{Client for NotifyMe}
  spec.description   = %q{Client for NotifyMe}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
