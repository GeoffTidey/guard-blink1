Gem::Specification.new do |s|
  s.name        = 'guard-blink1'
  s.version     = '0.0.0'
  s.date        = '2013-05-10'
  s.summary     = "guard output to blink1"
  s.description = "expects first line from guard result file, and outputs relevant colour to blink1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Geoff Tidey"]
  s.email       = 'guard-blink1@tidey.net'
  s.files       = `git ls-files`.split($\)
  s.homepage    = ''
  s.require_paths = ["lib"]
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.add_development_dependency 'test-unit'
  s.add_development_dependency 'guard'
  s.add_development_dependency 'guard-shell'
  s.add_development_dependency 'pry'

  s.add_runtime_dependency "rb-blink1", "~> 0.0.6"
  s.add_runtime_dependency "colormath", "~> 0.1.2"
end