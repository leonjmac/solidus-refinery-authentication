# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name          = "solidus-refinerycms-authentication"
  s.version       = "1.0.2"
  s.authors       = ["Brice Sanchez", "Philip Arndt", "Leon McLeggan"]
  s.description   = "A Refinery CMS and Solidus connector"
  s.summary       = "Solidus has a pluggable authentication system. This will tell Refinery CMS to use Solidus user model and authentication."
  s.homepage      = "https://github.com/refinerycms-contrib/solidus-refinery-authentication"

  s.files         = `git ls-files`.split($/)
  s.test_files    = s.files.grep(%r{^spec/})
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'solidus', '>= 1.0'
  s.add_runtime_dependency 'refinerycms-core', '> 4.0.1'
  s.add_runtime_dependency 'zilch-authorisation', '>= 0.0.1'
  s.add_runtime_dependency 'decorators', '>= 2.0'
  s.add_runtime_dependency 'deface', '~> 1.0'
end
