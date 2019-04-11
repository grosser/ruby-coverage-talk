require 'coverage'
Coverage.start
require_relative 'example'
example 1
stored = Coverage.peek_result
fork do
  example 2
  result = Coverage.result.map do |file, cov|
    old = stored[file]
    cov.each_with_index.map do |c, i|
      old[i] ? old[i] + c : c
    end
  end
  puts result.inspect
end
