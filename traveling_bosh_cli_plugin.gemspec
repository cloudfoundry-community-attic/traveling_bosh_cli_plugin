# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'traveling_bosh_cli_plugin/version'

Gem::Specification.new do |spec|
  spec.name          = "traveling_bosh_cli_plugin"
  spec.version       = TravelingBoshCliPlugin::VERSION
  spec.authors       = ["Dr Nic Williams"]
  spec.email         = ["drnicwilliams@gmail.com"]
  spec.summary       = %q{After installing Traveling BOSH CLI, this plugin is included for easy upgrades.}
  spec.description   = %q{After installing Traveling BOSH CLI, this plugin is included for easy upgrades.}
  spec.homepage      = "https://github.com/cloudfoundry-community/traveling-bosh"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
