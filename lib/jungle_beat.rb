class JungleBeat
attr_reader  :list


  def initialize
    @list = LinkedList.new
  end

  def count
    @list.count
  end

  def play
    beats = @list.to_string
    command = `say -r 500 -v Boing #{beats}`
    command
  end

  def append(notes)
    notesholder = notes.split(" ")
    notesholder.join(" ")
    notesholder.each do |note|
      @list.append(note)
    end
  end
end
