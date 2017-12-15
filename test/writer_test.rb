require_relative "../lib/writer"
require "test/unit"

class WriterTest < Test::Unit::TestCase
  def test_file_created
    Writer.new([:a, :b], [{a: 1, b: 2}, {a: 3, b: 4}]).write("hoolaa_loop")
    assert(File.exist?("output/hoolaa_loop"))
  end

  def test_file_lines
    Writer.new([:a, :b], [{a: 1, b: 2}, {a: 3, b: 4}]).write("simon_says")
    lines = File.readlines("output/simon_says")
    assert(lines == ["1;2\n", "3;4\n"])
  end
end
