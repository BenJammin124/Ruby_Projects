def caesar_cipher(str, num)
  result = ""
  alph = ('a'..'z').to_a
  alph2 = ('A'..'Z').to_a

  str.each_char do |c|
    if alph2.include?(c)
      if c == " "
      result += " "
      else
      f_idx = alph2.find_index(c)
      n_idx = (f_idx + num) % alph2.length
      result += alph2[n_idx]
      end
    elsif alph.include?(c)
      if c == " "
        result += " "
        else
        f_idx = alph.find_index(c)
        n_idx = (f_idx + num) % alph.length
        result += alph[n_idx]
      end
    else
      result += c
    end
  end
  result
end

caesar_cipher("What a string!", 5)
