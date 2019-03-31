class Alouette
  NUM_OF_VERSES = 8

  def self.lines_for_verse(verse_num)
    lines = [
      "Et le dos!",
      "Et la queue!",
      "Et les pattes!",
      "Et les ailes!",
      "Et le cou!",
      "Et les yeux!",
      "Et le bec!",
      "Et la tête!",
    ]
    return lines[NUM_OF_VERSES - (verse_num + 1)...NUM_OF_VERSES]
  end

  def self.verse(verse_num)
    lines_for_verse = self.lines_for_verse(verse_num)
    first_part = lines_for_verse[0].clone
    first_part.slice!("Et ")
    first_part.sub!("!", ".")
    lines = [
      "Je te plumerai #{first_part}\n",
      "Je te plumerai #{first_part}\n",
    ]
    lines_for_verse.each do |line|
      2.times do
        lines << "#{line}\n"
      end
    end
    lines = lines + ["Alouette!\n", "Alouette!\n", "A-a-a-ah"]
    lines = lines.join
    return lines
  end

  def self.sing
    lyrics = ""
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
    lyrics += "#{refrain}\n"
    NUM_OF_VERSES.times do |verse_num|
      lyrics += "\n#{refrain}\n" if verse_num != 0
      lyrics += "\n#{self.verse(verse_num)}\n"
    end
    lyrics += "\n#{refrain}"

    return lyrics
  end
end
