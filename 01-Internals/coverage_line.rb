require 'coverage' # -> coverage.so
Coverage.start     # enable for newly loaded code
require_relative 'example'
example
Coverage.result    # disable
