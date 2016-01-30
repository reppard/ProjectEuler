$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift File.expand_path('../../', __FILE__)
require 'prime'
require 'problem_01'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end
