import Foundation

func spacer() -> () {
    return print("\n---------\n")
}

// MARK: - Strings - Remove Duplicates letters from a string using for loop
func removeDuplicateLettersUsingForLoop(_ inputString: String) -> String {
    var tempCharArray = [Character]()
    
    for char in inputString {
        if tempCharArray.contains(char) {
            inputString.firstIndex(of: char)
        }
        
        tempCharArray.append(char)
    }
    return ""
}

