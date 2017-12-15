require 'date'
require_relative '../lib/list_primer'
require_relative '../lib/requester'
require_relative '../lib/writer'
class Executioner
  attr_accessor :author, :project, :cols_to_write, :url_col
  def initialize(author, project, cols_to_write, url_col = 'url')
    @author = author
    @project = project
    @cols_to_write = cols_to_write
    @url_col = url_col
  end

  def execute
    request = Requester.new(
      "https://api.github.com/repos/#{author}/#{project}/contributors"
    ).request
    list = ListPrimer.new(request).prime("contributions", url_col)
    Writer.new(cols_to_write, list).write(
      "#{project}+#{DateTime.now.strftime("%d-%m-%Y--%H:%M")}.txt"
    )
    puts "done"
  end
end
