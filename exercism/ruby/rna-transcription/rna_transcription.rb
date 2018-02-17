module BookKeeping
 VERSION = 4
end

class Complement
  @dna_rna = { 'G' => 'C',
               'C' => 'G',
               'T' => 'A',
               'A' => 'U'
             }
  @dna_rna.default = ''

  def self.of_dna(dna)
    rna = ''
    dna.split("").each { |nucleotide|
      if @dna_rna[nucleotide] != ''
        rna += @dna_rna[nucleotide]
      else
        return ''
      end
    }
    rna
  end
end
