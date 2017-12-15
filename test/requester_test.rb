require_relative '../lib/requester'
require "test/unit"
class RequesterTest < Test::Unit::TestCase

  def test_invalid_url
    assert_raise do
      Requester.new("http://qkkfjrejgjt").request
    end
  end

  def test_valid_url
    assert_kind_of(String, Requester.new("http://Google.com").request)
  end

end
