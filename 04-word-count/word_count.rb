def words(words)
    words_array = words.split(" ")
    hashify = Hash.new(0)

    words_array.each { |word| hashify[word] += 1 }
    return hashify
  end
