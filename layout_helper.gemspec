require File.expand_path("../lib/layout_helper/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "layout_helper"
  s.version     = LayoutHelper::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andreas Altendorfer"]
  s.email       = ["andi@iboard.cc"]
  s.homepage    = "http://dav.iboard.cc/git/layout_helper"
  s.summary     = "Layouthelpers for all my projects"
  s.description = "Some little Helpers"

  s.required_rubygems_version = ">= 1.3.6"

  # lol - required for validation
  s.rubyforge_project         = "layout_helper"

  # If you have other dependencies, add them here
  # s.add_dependency "another", "~> 1.2"

  # If you need to check in files that aren't .rb files, add them here
  s.files        = Dir["README.md", "LICENSE", "lib/layout_helper.rb"]
  s.require_path = 'lib'

  # If you need an executable, add it here
  # s.executables = ["layout_helper"]

  # If you have C extensions, uncomment this line
  # s.extensions = "ext/extconf.rb"
end