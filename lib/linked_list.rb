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
    if @current_node == nil
      return @count
    elsif @current_node.next_node != nil
      go_to_next_node
      @count += 1
      count
    elsif @head != nil
      @count += 1
    end
     reset_current_node
     @count
  end

  def reset_current_node
    @current_node = @head
  end

  def append(data)
    if data == nil
      return
    elsif @head == nil
      @head = Node.new(data)
      reset_current_node
    else
      add_new_node(data)
    end
  end

  def add_new_node(data)
    if @current_node.next_node != nil
      go_to_next_node
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

  def get_node_by_position(position)
    reset_current_node
    (position - 1).times { go_to_next_node }
    return @current_node
  end

  def go_to_next_node
    @current_node = @current_node.next_node
  end

  def get_second_to_last_node
    reset_current_node
    @count = 0
    (count - 2).times { go_to_next_node }
    @current_node
  end

  def get_last_node
    reset_current_node
    @count = 0
    (count - 1).times { go_to_next_node }
    @current_node
  end

  def pop
    last_node_data = get_last_node.data
    get_second_to_last_node.set_next_node(nil)
    reset_current_node
    last_node_data

  end

  def insert(position, data)
    if (position.is_a? Integer) && (data.is_a? String)
    new_node = Node.new(data)
      if position < count && position > 1
        get_node_by_position(position - 1)
        @current_node.set_next_node(new_node)
        get_node_by_position(position)
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
      go_to_next_node
      to_string
    else
      @song << @current_node.data
    end
      @song.join(' ')
  end

  def find(location, number_of_lyrics)
    get_node_by_position(location + 1)
    lyrics = []
    number_of_lyrics.times do
      lyrics << @current_node.data
      go_to_next_node
    end
    reset_current_node
    lyrics.join(' ')
  end

  def includes?(lyric)
    if @current_node.data == lyric
      reset_current_node
      return true
    elsif @current_node.next_node != nil
      go_to_next_node
      includes?(lyric)
    elsif @current_node.next_node == nil && @current_node.data != lyric
      reset_current_node
      return false
    end
  end




      # iterate through nodes
      # if last node
      # return node.data
      # assign next_node for second to last node to null
end
