Gem::Specification.new do |s|
  s.name        = 'guard-blink1'
  s.version     = '0.0.2'
  s.date        = '2013-05-10'
  s.description = "guard output to blink1"
  s.summary     = "expects first line from guard result file, user guard file notification & guard-shell to outputs relevant colour to blink1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Geoff Tidey"]
  s.email       = 'guard-blink1@tidey.net'
  s.files       = `git ls-files`.split($\)
  s.homepage    = 'https://github.com/GeoffTidey/guard-blink1'
  s.require_paths = ["lib"]
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.add_development_dependency 'test-unit', '>= 2.5.4'
  s.add_development_dependency 'guard', '>= 1.8'
  s.add_development_dependency 'guard-shell', '>= 0.5.1'
  s.add_development_dependency 'pry', '>= 0.9.12'

  s.add_runtime_dependency "rb-blink1", "~> 0.0.6"
  s.add_runtime_dependency "colormath", "~> 0.1.2"
end