$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift File.expand_path('../../', __FILE__)
require 'prime'
require 'problem_01'
require 'problem_02'
require 'problem_03'
require 'problem_04'
require 'problem_05'
require 'problem_06'
require 'problem_08'
require 'problem_11'
require 'problem_18'
require 'problem_22'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end
