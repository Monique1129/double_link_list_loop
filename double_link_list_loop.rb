require File.dirname(__FILE__) + "/double_link_list_loop.rb"

class DoubleListLinkLoop

  def initialize
    @list = []
    @pointer = 0 #index from the list[]
  end

  def add_node(x)
    x.times do
      @list << { :id => @list.length, :next => "#{@list.length + 1}".to_i, :prev => "#{@list.length - 1}".to_i }
    end
  end

  def show
    @pointer = @list[@pointer][:next]
    puts @list[@pointer]
    puts @pointer
  end

  def back
    @pointer = @list[@pointer][:prev]
    puts @list[@pointer]
    puts @pointer
  end

end

=begin
irb

require "./double_link_list-4"
l = List.new
l.add_node
l.add_node
l.add_node
l.add_node
l.add_node
l.add_node
l.add_node
l.add_node
l.add_node
l.show
=end