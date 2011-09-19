# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "itc_autoingest/version"

Gem::Specification.new do |s|
  s.name        = "itc-autoingest"
  s.version     = ITCAutoingest::VERSION
  s.authors     = ["Carson McDonald"]
  s.email       = ["carson@ioncannon.net"]
  s.homepage    = "http://github.com/carsonmcdonald/itc-autoingest-gem"
  s.summary     = %q{ITC Autoingest is a gem for fetching iTunes connect reports.}
  s.description = %q{This library makes it easy to fetch iTunes connect reports using the official autoingest system.}

  s.rubyforge_project = "itc-autoingest"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "httparty"
end
