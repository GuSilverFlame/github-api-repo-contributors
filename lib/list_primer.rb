require 'json'
class ListPrimer
  attr_accessor :response
  def initialize(response)
    @response = response
  end

  def prime(order, expansible_column = nil)
    parse
    expand(expansible_column) if expansible_column
    @list.sort{|first, second| second[order] <=> first[order]}
  end

  private

  def expand(url_col)
    @list = @list.map do |result|
      second_depth = JSON.parse(Request.new(result[url_col]).requesto)
      result.merge(second_depth)
    end
  end

  def parse
    @list = JSON.parse(response)
  end

end
