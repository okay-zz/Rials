# -*- encoding: utf-8 -*-
require File.expand_path("../lib/rials/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "rials"
  s.version     = Rials::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['(O_o)k']
  s.email       = ['itsallokay@googlegroups.com']
  s.homepage    = "http://rubygems.org/gems/rials"
  s.summary     = "Full-stack web application framework."
  s.description = "Ruby on Rails is a full-stack web framework optimized for programmer happiness and sustainable productivity. It encourages beautiful code by favoring convention over configuration."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "rials"

  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
  
  s.rdoc_options = %w(--exclude lib/data/*) 
end
