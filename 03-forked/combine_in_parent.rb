require 'coverage'
Coverage.start
require_relative 'example'
example 1

read, write = IO.pipe
Process.wait(fork do
  example 2
  Marshal.dump(Coverage.result, write)
end)
stored = Marshal.load(read)

result = Coverage.result.map do |file, cov|
  old = stored[file]
  cov.each_with_index.map do |c, i|
    old[i] ? old[i] + c : c
  end
end
puts result.inspect
