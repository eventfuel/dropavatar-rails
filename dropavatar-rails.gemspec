# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dropavatar-rails/version"

Gem::Specification.new do |s|
  s.name        = "dropavatar-rails"
  s.version     = DropAvatarRails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Niko Roberts","Chris Coyier"]
  s.email       = ["niko@tasboa.com","chriscoyier@gmail.com"]
  s.homepage    = "https://github.com/tasboa/dropavatar-rails"
  s.summary     = %q{XHR transmission gem for images on forms}
  s.description = %q{This gem aims to provide a way for images to be manipulated client side and then uploaded via XHR post request as base64 data}
  s.license     = 'MIT'

  s.files         = Dir.glob("{vendor,lib}/**/*")
  s.require_paths = ["lib"]

  s.add_dependency "rails", "~> 3.2"
  s.add_dependency "railties", "~> 3.2"
  s.add_dependency "jquery-rails", "~> 2.2.0"
end
