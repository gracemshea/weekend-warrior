class RomanReverter
  def self.rna(rna_strand)
    rna_strand.length.times do |i|
      if (["C", "G", "A", "U"].include?(rna_strand[i])) == false
        raise ArgumentError.new("Invalid")
      else
        case rna_strand[i]
        when "C"
          rna_strand[i] = "G"
        when "G"
          rna_strand[i] = "C"
        when "A"
          rna_strand[i] = "T"
        when "U"
          rna_strand[i] = "A"
        end
      end
    end
    return rna_strand
  end

  def self.dna(dna_strand)
    dna_strand.length.times do |i|
      if (["G", "C", "T", "A"].include?(dna_strand[i])) == false
        raise ArgumentError.new("Invalid")
      else
        case dna_strand[i]
        when "G"
          dna_strand[i] = "C"
        when "C"
          dna_strand[i] = "G"
        when "T"
          dna_strand[i] = "A"
        when "A"
          dna_strand[i] = "U"
        end
      end
    end
    return dna_strand
  end
end
