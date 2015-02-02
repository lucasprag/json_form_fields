# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'json_form_fields/version'

Gem::Specification.new do |spec|
  spec.name          = "json_form_fields"
  spec.version       = JsonFormFields::VERSION
  spec.authors       = ["Lucas Oliveira"]
  spec.email         = ["loslucassilva@gmail.com"]
  spec.summary       = %q{A gem to write JSON with form fields}
  spec.description   = %q{A gem to write JSON with form fields}
  spec.homepage      = "https://github.com/Lucasosf/json_form_fields"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
