$:.push "#{File.dirname(__FILE__)}/lib"
require "jenkins/dev/version"

Gem::Specification.new do |s|
  s.name        = "jenkins-dev-dev"
  s.version     = Jenkins::Dev::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kohsuke Kawaguchi"]
  s.email       = ["kk@kohsuke.org"]
  s.homepage    = "http://github.com/jenkinsci/jenkins-dev.rb"
  s.summary     = "Command line tool for Jenkins developer"
  s.description = "Simple CLI for Jenkins developers"

  s.rubyforge_project = "jenkins"

  s.files         = `git ls-files`.split("\n")

  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("thor", ["~> 0.14.2"])
  s.add_dependency("launchy", ["~> 2.0.5"])
  s.add_development_dependency("rake", ["~> 0.8.7"])
  s.add_development_dependency("cucumber", ["~> 0.10.0"])
  s.add_development_dependency("rspec", ["~> 2.0.0"])
end