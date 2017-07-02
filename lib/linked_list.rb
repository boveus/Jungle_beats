class LinkedList
attr_reader  :head,
             :node_list

  def initialize
    @head = nil
    @song = []
    @current_node = nil
    @count = 0
  end

  def count
    if @current_node.next_node != nil
      @current_node = @current_node.next_node
      @count += 1
      count
    elsif @head != nil
      @count += 1
    end
     reset_current_node
      return @count
  end

  def reset_current_node
    @current_node = @head
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
      reset_current_node
    else
      add_new_node(data)
    end
  end

  def add_new_node(data)
    if @current_node.next_node != nil
      @current_node = @current_node.next_node
      add_new_node(data)
    else
      @current_node.set_next_node(Node.new(data))
    end
    reset_current_node
  end


  def prepend(data)
    new_node = Node.new(data)
    new_node.set_next_node(@head)
    @head = new_node
    reset_current_node
  end

  def go_to_node(position)
    reset_current_node
    (position - 1).times { @current_node = @current_node.next_node }
    return @current_node
  end

  def insert(position, data)
    if (position.is_a? Integer) && (data.is_a? String)
    new_node = Node.new(data)
      if position < count && position > 1
        go_to_node(position - 1)
        @current_node.set_next_node(new_node)
        go_to_node(position)
        new_node.set_next_node(@current_node)
      elsif position < count && position == 1
        new_node.set_next_node(@head.next_node)
        @head.set_next_node(new_node)
      end
    end
    reset_current_node
  end

  def to_string
    if @current_node.next_node != nil
      @song << @current_node.data
      @current_node = @current_node.next_node
      to_string
    else
      @song << @current_node.data
      reset_current_node
    end
      @song.join(' ')
  end

  def find(location, number_of_lyrics)
    go_to_node(location + 1)
    lyrics = []
    number_of_lyrics.times do
      lyrics << @current_node.data
      @current_node = @current_node.next_node
    end
    reset_current_node
    lyrics.join(' ')
  end

  def includes?(lyric)
    if @current_node.data == lyric
      reset_current_node
      return true
    elsif @current_node.next_node != nil
      @current_node = @current_node.next_node
      includes?(lyric)
    elsif @current_node.next_node == nil && @current_node.data != lyric
      reset_current_node
      return false
    end
  end
end
