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
    verse = ""

    return verse
  end

  def self.sing
    lyrics = ""
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."

    lyrics += refrain
    return lyrics
  end
end
