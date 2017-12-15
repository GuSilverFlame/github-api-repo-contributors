require 'date'
require_relative 'list_primer'
require_relative 'request'
require_relative 'writah'
class Executioner
  attr_accessor :author, :project, :cols_to_write, :url_col
  def initialize(author, project, cols_to_write, url_col = 'url')
    @author = author
    @project = project
    @cols_to_write = cols_to_write
    @url_col = url_col
  end

  def execute
    request = Request.new(
      "https://api.github.com/repos/#{author}/#{project}/contributors"
    ).requesto
    list = ListPrimer.new(request).prime("contributions", url_col)
    Wraitah.new(cols_to_write, list).write(
      "#{project}+#{DateTime.now.strftime("%d-%m-%Y--%H:%M")}.txt"
    )
    puts "done"
  end
end
