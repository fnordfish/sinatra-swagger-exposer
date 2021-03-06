require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'simplecov'
SimpleCov.start do
  add_group 'lib', 'lib'
  add_filter 'test'
end

unless ENV['NO_COVERALLS']
  require 'coveralls'
  Coveralls.wear!
end

require 'minitest/autorun'
