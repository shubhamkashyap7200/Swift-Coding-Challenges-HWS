import Foundation

func spacer() -> () {
    return print("\n---------\n")
}

// MARK: - Strings - Condense Whitespace using for loop brute force
func condenseWhitespaceUsingForLoop(_ inputString: String) -> String {
    var seenSpace: Bool = false
    var returnValue = ""
    
    for char in inputString {
        if char == " " {
            if (seenSpace == false) { continue }
            seenSpace = true
        }
        else {
            seenSpace = false
        }
        
        returnValue.append(char)
    }
    
    return returnValue
}

print(condenseWhitespaceUsingForLoop("  Hel ll o world"))
spacer()

// MARK: - Strings - Condense Whitespace using for loop brute force
func condenseWhitespaceUsingComponentsBy(_ inputString: String) -> String {
    let components = inputString.components(separatedBy: .whitespacesAndNewlines)
    return components.filter{ !$0.isEmpty }.joined(separator: "")
}

print(condenseWhitespaceUsingComponentsBy("Hel  lo"))
