module MyEnumerable
  def all?
    @return = true
    @list.each { |item| @return = false unless yield(item) }
    @return
  end

  def any?
    @return = false
    @list.each { |x| @return = true if yield x }
    @return
  end

  def filter
    @fillter_array = []
    @list.each { |x| @fillter_array << x if yield x }
    @fillter_array
  end
end
