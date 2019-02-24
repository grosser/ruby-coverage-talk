require 'coverage'
Coverage.start branches: true # Ruby 2.5+
require_relative 'example'
example
Coverage.result
