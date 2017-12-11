def is_isogram(string):
    string = string.lower()
    for letter in string:
        if letter.isalpha():
            idx = string.find(letter)
            if idx >= 0 and string.find(letter, idx+1) == -1:
                continue
            else:
                return False
    return True
            
        
