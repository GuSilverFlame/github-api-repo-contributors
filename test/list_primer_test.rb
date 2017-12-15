require_relative '../lib/list_primer'
require "test/unit"
class ListPrimerTest
  def test_order_desc
    primer = ListPrimer.new("[{\"a\":100},{\"a\":2},{\"a\":36},{\"a\":4}]")
    assert(
      primer.parse('a') == [{'a' => 100}, {'a' => 36}, {'a' => 4}, {'a' => 2}]
    )
  end
end
