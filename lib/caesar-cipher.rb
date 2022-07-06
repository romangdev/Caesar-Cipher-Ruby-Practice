def caesar_cipher(word, number = 0)
    arr = word.split("")
    new_word = []
    return "Please enter positive number" if number.negative?
    return "Please enter number under 27" if number > 26

    arr.each do |char|
        char_ascii = char.ord
        if char_ascii.between?(65, 90)
            char_ascii += number
            if char_ascii > 90
                char_ascii = char_ascii -= 26
            end
            new_word << char_ascii.chr
        elsif char_ascii.between?(97, 122)
            char_ascii += number
            if char_ascii > 122
                char_ascii -= 26
            end
            new_word << char_ascii.chr 
        else
            new_word << char
        end
    end
    new_word = new_word.join
    p new_word
    return new_word
end

# testing to see if it works
caesar_cipher("What a string!", 5)