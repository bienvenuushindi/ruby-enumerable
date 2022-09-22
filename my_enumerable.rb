module MyEnumerable
  def all?
    return 'No block given' unless block_given?

    i = 0
    while i < @list.length
      return false unless yield(@list[i])

      i += 1
    end
    true
  end

  def any?
    return 'No block given' unless block_given?

    i = 0
    while i < @list.length
      return true if yield(@list[i])

      i += 1
    end
    false
  end

  def filter(&block)
    result = []
    i = 0
    while i < @list.length
      result << @list[i] if block.call(@list[i])

      i += 1
    end
    result
  end
end
