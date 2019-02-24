require 'coverage'
Coverage.start add_on_fork: true
require_relative 'example'
example 1
fork do
  example 2
  Coverage.result
end
