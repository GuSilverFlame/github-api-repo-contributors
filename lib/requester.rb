require 'open-uri'
class Request
  attr_accessor :url

  def initialize(url)
    @url = url
  end

  def requesto
    content = open(url).read
  end

end
