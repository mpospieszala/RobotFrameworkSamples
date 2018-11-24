def checkMatchingString(HTMLsource, searchedKeyword):
    if searchedKeyword in HTMLsource:
        print(HTMLsource.count(searchedKeyword))
        return True
    return False
