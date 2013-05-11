require './lib/guard_blink1'
notification(:file, path: '.guard_result')

guard :test do
  watch(%r{^lib/(.+)\.rb$})     { |m| "test/#{m[1]}_test.rb" }
  watch(%r{^test/.+_test\.rb$})
  watch('test/test_helper.rb')  { "test" }
end

guard :shell do
  watch '.guard_result' do
    firstline =  File.read('.guard_result').lines.first.strip
    GuardBlink1.blink_colour(firstline)
  end
end