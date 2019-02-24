require 'coverage'
Coverage.start
require_relative 'example'
example 1
fork { puts Coverage.result }
