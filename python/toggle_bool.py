VALUES = {
    "true": "false",
    "on": "off",
    "yes": "no",
    "1": "0",
}


def format_value(word, toggle_word):
    if word.isupper():
        return toggle_word.upper()
    if word.istitle():
        return toggle_word.title()
    return toggle_word.lower()


def toggle_bool_value(word):
    toggle_word = word
    for key in VALUES.keys():
        if key == word.lower():
            toggle_word = VALUES[key]
            toggle_word = format_value(word, toggle_word)
            break
        elif VALUES[key] == word.lower():
            toggle_word = key
            toggle_word = format_value(word, toggle_word)
            break
    return toggle_word
