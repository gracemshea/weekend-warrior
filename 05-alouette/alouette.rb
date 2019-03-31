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
    first_line = lines_for_verse(verse_num)[0]
    first_line.slice! "!"
    first_line << "."
    2.times do
      verses << "Je te plumerai #{first_line[3, (first_line.length - 1)]}\n"
    end

    i = 0
    while i <= verse_num
      2.times do
        verses << "#{lines_for_verse(verse_num)[i]}\n"
      end
      i += 1
    end

    verses = verses + ["Alouette!\n", "Alouette!\n", "A-a-a-ah"]
    verses = verses.join
    return verses
  end

  def self.sing
    lyrics = ""
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
    i = 0
    while i < NUM_OF_VERSES
      lyrics << "#{refrain}\n\n"
      lyrics += "#{verse(i)}\n\n"
      i += 1
    end
    lyrics += refrain
    return lyrics
  end
end
