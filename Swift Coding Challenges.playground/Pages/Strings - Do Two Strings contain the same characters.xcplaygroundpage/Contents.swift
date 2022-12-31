import Foundation

func spacer() -> () {
    return print("\n---------\n")
}

// MARK: - Strings - Do Two Strings contain the same characters using brute force
func doTwoStringContainTheSameCharactersUsingBruteForce(inputString1: String, inputString2: String) -> Bool {
    var checkString = inputString2
    
    for char in inputString1 {
        if let index = checkString.firstIndex(of: char) {
            checkString.remove(at: index)
        }
        else {
            return false
        }
    }
    
    return checkString.count == 0
}

print(doTwoStringContainTheSameCharactersUsingBruteForce(inputString1: "abc", inputString2: "abca"))
spacer()


// MARK: - Strings - Do Two Strings contain the same characters using in built sorted function
func doTwoStringContainTheSameCharactersUsingSortedFunction(inputString1: String, inputString2: String) -> Bool {
    return inputString1.sorted() == inputString2.sorted()
}

print(doTwoStringContainTheSameCharactersUsingSortedFunction(inputString1: "abc", inputString2: "abca"))
