# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ajax_submit_rails/version'

Gem::Specification.new do |spec|

  spec.name          = 'ajax_submit_rails'
  spec.version       = AjaxSubmitRails::VERSION
  spec.authors       = ['AquisTech']
  spec.email         = ['aquis.tech@gmail.com']

  spec.summary       = 'Integration of [jquery.form](https://github.com/jquery-form/form) with the Rails asset pipeline.'
  spec.description   = 'Integration of [jquery.form](https://github.com/jquery-form/form) with the Rails asset pipeline. Supports AJAX form submission. Also submits form with file field with AJAX request.'
  spec.homepage      = 'https://github.com/AquisTech/ajax_submit_rails'
  spec.license       = 'MIT'
  spec.files         = %x(git ls-files -z).split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
