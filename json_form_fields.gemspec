# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name          = 'json_form_fields'
  s.version       = '0.1.0'
  s.date          = '2015-01-28'
  s.summary       = "JSON Form Fields"
  s.description   = "A gem to write JSON with form fields"
  s.authors       = ["Lucas Oliveira"]
  s.email         = ["loslucassilva@gmail.com"]
  s.files         =  Dir.glob("{lib,spec}/**/*")
  s.test_files    = s.files.grep(%r{^(spec|features)/})
  s.require_paths = ["lib"]
  s.homepage      = 'http://rubygems.org/gems/json_form_fields'
  s.license       = 'MIT'
end