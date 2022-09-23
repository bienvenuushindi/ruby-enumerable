module MyEnumerable
  def all?
    return 'No block given' unless block_given?

    each do |e|
      return false unless yield(e)
    end
    true
  end

  def any?
    return 'No block given' unless block_given?

    each do |e|
      return true if yield(e)
    end
    false
  end

  def filter(&block)
    result = []
    each do |e|
      result << e if block.call(e)
    end
    result
  end
end
