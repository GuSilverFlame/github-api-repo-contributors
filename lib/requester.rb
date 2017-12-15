require 'open-uri'
class Requester
  attr_accessor :url

  def initialize(url)
    @url = url
  end

  def request
    content = open(url).read
  end

end
