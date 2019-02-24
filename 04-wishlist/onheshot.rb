require 'coverage'
Coverage.start oneshot_lines: :boolean
require_relative 'example'
example 1
Coverage.result
