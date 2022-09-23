require_relative 'my_enumerable'
class MyList
  # include MyEnumerable
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

 def each
   @list.each { |e| yield(e) }
  end
end
