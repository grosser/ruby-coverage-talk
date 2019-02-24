require 'coverage'
Coverage.start # lines
# Coverage.start branches: true
# Coverage.start oneshot_lines: true
require_relative 'example'
50_000_000.times { example }
Coverage.result
