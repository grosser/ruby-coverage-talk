require 'single_cov'
SingleCov.setup :minitest

require 'minitest/autorun'
require_relative 'example'

SingleCov.covered! file: "02-actionable/example.rb"

describe "example" do
  it "hits first branch" do
    example(1).must_equal 1
  end

  it "hits second branch" do
    example(2).must_equal 2
  end

  it "check covered for all tests" do
    SingleCov.assert_used
  end

  it "has tests for all files" do
    SingleCov.assert_tested
  end
end
