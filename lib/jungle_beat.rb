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
  end

  def prepend(notes)
    add_notes_to_song(notes, "prepend")
  end

  def append(notes)
    add_notes_to_song(notes, "append")
  end

  def add_notes_to_song(notes, method)
    all_notes = notes.split(" ")
    all_notes.each do |note|
      if valid?(note) && method == "append"
        @list.append(note)
      elsif valid?(note) && method == "prepend"
        @list.prepend(note)
      else
        all_notes.delete(note)
      end
    end
    all_notes.count
  end

  def valid?(note)
    @valid_notes.include? note
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
