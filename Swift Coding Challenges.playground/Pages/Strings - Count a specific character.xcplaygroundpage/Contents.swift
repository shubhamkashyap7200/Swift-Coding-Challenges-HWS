import Foundation

func spacer() -> () {
    return print("\n---------\n")
}

// MARK: - Strings - Count a specific character using for loop brute force
func countSpecificCharacterUsingForLoop(inputString: String, specificChar: Character) -> Int {
    var characterCount = 0
    
    for char in inputString {
        if char == specificChar {
            characterCount += 1
        }
    }
    
    return characterCount
}

print(countSpecificCharacterUsingForLoop(inputString: "Hello", specificChar: "l"))
spacer()


// MARK: - Strings - Count a specific character using reduce method
func countSpecificCharacterUsingReduceMethod(inputString: String, specificChar: Character) -> Int {
    return inputString.reduce(0) {
        $1 == specificChar ? $0 + 1: $0
    }
}

print(countSpecificCharacterUsingReduceMethod(inputString: "Hellooo", specificChar: "o"))
spacer()

// MARK: - Strings - Count a specific character using NSCountedSet -- Very slow approach
func countSpecificCharacterUsingNSCountedSet(inputString: String, specificChar: String) -> Int {
    let array = inputString.map{ String($0) }
    let count = NSCountedSet(array: array)
    
    
    return count.count(for: specificChar)
}

print(countSpecificCharacterUsingNSCountedSet(inputString: "WWWWorld", specificChar: "W"))
spacer()


// MARK: - Strings - Count a specific character using NSCountedSet -- Very slow approach
func countSpecificCharacterUsingReplacingOccurencies(inputString: String, specificChar: String) -> Int {
    let modified = inputString.replacingOccurrences(of: specificChar, with: "")
    return inputString.count - modified.count
}

print(countSpecificCharacterUsingReplacingOccurencies(inputString: "Worldd", specificChar: "d"))
