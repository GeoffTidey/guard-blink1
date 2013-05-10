# A sample Guardfile
# More info at https://github.com/guard/guard#readme

# Run JS and CoffeeScript files in a typical Rails 3.1 fashion, placing Underscore templates in app/views/*.jst
# Your spec files end with _spec.{js,coffee}.

# spec_location = "spec/javascripts/%s_spec"

# uncomment if you use NerdCapsSpec.js
# spec_location = "spec/javascripts/%sSpec"

# guard 'jasmine-headless-webkit' do
#   watch(%r{^app/views/.*\.jst$})
#   watch(%r{^public/javascripts/(.*)\.js$}) { |m| newest_js_file(spec_location % m[1]) }
#   watch(%r{^app/assets/javascripts/(.*)\.(js|coffee)$}) { |m| newest_js_file(spec_location % m[1]) }
#   watch(%r{^spec/javascripts/(.*)_spec\..*}) { |m| newest_js_file(spec_location % m[1]) }
# end


# guard 'minitest' do
#   # with Minitest::Unit
#   watch(%r|^test/(.*)\/?test_(.*)\.rb|)
#   watch(%r|^lib/(.*)([^/]+)\.rb|)     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
#   watch(%r|^test/test_helper\.rb|)    { "test" }

#   # with Minitest::Spec
#   # watch(%r|^spec/(.*)_spec\.rb|)
#   # watch(%r|^lib/(.*)([^/]+)\.rb|)     { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
#   # watch(%r|^spec/spec_helper\.rb|)    { "spec" }

#   # Rails 3.2
#   # watch(%r|^app/controllers/(.*)\.rb|) { |m| "test/controllers/#{m[1]}_test.rb" }
#   # watch(%r|^app/helpers/(.*)\.rb|)     { |m| "test/helpers/#{m[1]}_test.rb" }
#   # watch(%r|^app/models/(.*)\.rb|)      { |m| "test/unit/#{m[1]}_test.rb" }

#   # Rails
#   # watch(%r|^app/controllers/(.*)\.rb|) { |m| "test/functional/#{m[1]}_test.rb" }
#   # watch(%r|^app/helpers/(.*)\.rb|)     { |m| "test/helpers/#{m[1]}_test.rb" }
#   # watch(%r|^app/models/(.*)\.rb|)      { |m| "test/unit/#{m[1]}_test.rb" }
# end


# Make sure this guard is ABOVE any other guards using assets such as jasmine-headless-webkit
# It is recommended to make explicit list of assets in `config/application.rb`
# config.assets.precompile = ['application.js', 'application.css', 'all-ie.css']
# guard 'rails-assets' do
#   watch(%r{^app/assets/.+$})
#   watch('config/application.rb')
# end

# guard 'rspec', :version => 2 do
#   watch(%r{^spec/.+_spec\.rb$})
#   watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
#   watch('spec/spec_helper.rb')  { "spec" }

#   # Rails example
#   watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
#   watch(%r{^app/(.*)(\.erb|\.haml)$})                 { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
#   watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
#   watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
#   watch('config/routes.rb')                           { "spec/routing" }
#   watch('app/controllers/application_controller.rb')  { "spec/controllers" }
#   # Capybara request specs
#   watch(%r{^app/views/(.+)/.*\.(erb|haml)$})          { |m| "spec/requests/#{m[1]}_spec.rb" }
# end


# guard 'spork', :cucumber_env => { 'RAILS_ENV' => 'test' }, :rspec_env => { 'RAILS_ENV' => 'test' } do
#   watch('config/application.rb')
#   watch('config/environment.rb')
#   watch(%r{^config/environments/.+\.rb$})
#   watch(%r{^config/initializers/.+\.rb$})
#   watch('Gemfile')
#   watch('Gemfile.lock')
#   watch('spec/spec_helper.rb') { :rspec }
#   watch('test/test_helper.rb') { :test_unit }
#   watch(%r{features/support/}) { :cucumber }
# end

guard :test do
  watch(%r{^lib/(.+)\.rb$})     { |m| "test/#{m[1]}_test.rb" }
  watch(%r{^test/.+_test\.rb$})
  watch('test/test_helper.rb')  { "test" }

  # # Rails example
  # watch(%r{^app/models/(.+)\.rb$})                   { |m| "test/unit/#{m[1]}_test.rb" }
  # watch(%r{^app/controllers/(.+)\.rb$})              { |m| "test/functional/#{m[1]}_test.rb" }
  # watch(%r{^app/views/.+\.rb$})                      { "test/integration" }
  # watch('app/controllers/application_controller.rb') { ["test/functional", "test/integration"] }
end

notification(:file, path: '.guard_result')

guard :shell do
  watch '.guard_result' do
    binding.pry
    firstline =  File.read('.guard_result').lines.first.strip
    GuardBlink1::blink_colour('success')
  end
end