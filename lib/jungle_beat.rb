class JungleBeat
attr_reader   :list,
              :rate,
              :voice

  def initialize(first_beat = nil)
    @list = LinkedList.new
    @head_node = @list.append(first_beat)
    @rate = 500
    @voice = "Boing"
    @valid_notes = ['tee', 'dee', 'deep', 'bop', 'boop', 'la', 'na', 'ditt', 'hoo', 'shu', 'doo', 'woo']
    @valid_voices = ['Alice', 'Boing']
    @valid_note_counter = 0
  end

  def prepend(notes)
    @valid_note_counter = 0
    notesholder = notes.split(" ")
    notesholder.join(" ")
    notesholder.each do |note|
      @list.prepend(validated(note))
    end
    @valid_note_counter
  end

  def append(notes)
    @valid_note_counter = 0
    notesholder = notes.split(" ")
    notesholder.join(" ")
    notesholder.each do |note|
      @list.append(validated(note))
    end
    @valid_note_counter
  end

  def validated(note)
    if @valid_notes.include? note
      @valid_note_counter += 1
      note
    end
  end

  def play
    beats = @list.to_string
    `say -r #{@rate} -v #{@voice} #{beats}`
  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Boing"
  end

  def set_voice(voice)
    if @valid_voices.include? voice
      @voice = voice
    end
  end

  def set_rate(rate)
    if rate > 0 && rate < 1000
      @rate = rate
    end
  end

  def count
    @list.count
  end

  def all
    @list.to_string
  end
end
