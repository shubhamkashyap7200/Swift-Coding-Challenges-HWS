import Foundation

func spacer() -> () {
    return print("\n---------\n")
}

// MARK: - Are letter unique using sets -- OPTIMISED APPROACH
func areLetterUnique(_ inputString: String) -> Bool {
    return inputString.count == Set(inputString).count
}

print(areLetterUnique("Hello"))
print(areLetterUnique("Helo"))
print(areLetterUnique("World"))
spacer()


// MARK: - Are letter unique using iteration for loop -- BRUTE FORCE
func areLetterUniqueUsingForLoop(_ inputString: String) -> (Bool) {
    var usedCharacters = [Character]()
    
    for char in inputString {
        if usedCharacters.contains(char) {
            return false
        }
        usedCharacters.append(char)
    }
    return true
}

print(areLetterUniqueUsingForLoop("Helo"))
spacer()

// MARK: - Are letter unique using iteration for loop and returning the character also
func areLetterUniqueUsingForLoopAndReturningChar(_ inputString: String) -> (Bool, Character?) {
    var usedCharacters = [Character]()
    
    for char in inputString {
        if usedCharacters.contains(char) {
            return (false, char)
        }
        usedCharacters.append(char)
    }
    return (true, nil)
}

print(areLetterUniqueUsingForLoopAndReturningChar("Helo"))
