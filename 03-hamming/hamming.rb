
class Hamming
  def self.compute(strand1, strand2)
    if strand1.length != strand2.length
      raise ArgumentError, "DNA strands must be the same length! (Strand 1 has #{strand1.length} letters while Strand 2 has #{strand2.length}letters.)"
    end

    hamming_count = 0
    (strand1.split(//)).zip(strand2.split(//)).each do |char|
      if char[0] != char[1]
        hamming_count += 1
      end
    end
    return hamming_count
  end
end
