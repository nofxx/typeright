lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'typeright/version'

Gem::Specification.new do |s|
  s.name        = 'typeright'
  s.version     = Typeright::VERSION
  s.platform    = Gem::Platform::RUBY

  s.authors     = ['Marcos Piccinini']
  s.homepage    = 'http://github.com/nofxx/typeright'
  s.email       = 'x@nofxx.com'
  s.description = 'Make text beautiful'
  s.summary     = 'Make text UTF-8 beautiful'
  s.license     = 'MIT'

  s.executables = ['typeright']
  s.default_executable = 'typeright'

  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']
end
