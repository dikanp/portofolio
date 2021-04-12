# require 'test_helper'
require './test/test_helper'

class PortofolioTest < ActiveSupport::TestCase
  test "portofolio should be valid" do
    @portfolio = Portfolio.new(name: "Name")
    assert @portfolio.valid?
  end
end