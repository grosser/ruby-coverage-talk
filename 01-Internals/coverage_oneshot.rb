require 'coverage'
Coverage.start oneshot_lines: true # Ruby 2.6+
require_relative 'example'
5.times { example }
Coverage.result
