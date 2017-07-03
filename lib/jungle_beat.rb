class JungleBeat
attr_reader  :list


  def initialize(first_beat = nil)
    @list = LinkedList.new
    @head_node = @list.append(first_beat)
  end

  def count
    @list.count
  end

  def play
    beats = @list.to_string
    `say -r 500 -v Boing #{beats}`
  end

  def validate_note(note)

  end

  def prepend(notes)

  end


  def append(notes)
    notesholder = notes.split(" ")
    notesholder.join(" ")
    notesholder.each do |note|
      @list.append(note)
    end
  end
end
